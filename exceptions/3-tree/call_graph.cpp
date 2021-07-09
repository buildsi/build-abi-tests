#include "CFG.h"
#include "CodeObject.h"
#include <sstream>
#include <unordered_set>
#include <vector>

using namespace Dyninst;
using namespace ParseAPI;

int main(int argc, char *argv[]) {
	if(argc != 2) {
		std::cerr << "Usage: " << argv[0] << " executable\n";
		return -1;
	}
	
  auto *sts = new SymtabCodeSource(argv[1]);
  auto *co = new CodeObject(sts);

  // Parse the binary
  co->parse();

  std::cout << "digraph G {\n";

  std::unordered_set<Address> seen;

  auto all = co->funcs();
  
  // Remove compiler-generated and system functions
  for(auto i = all.begin(); i != all.end();) {
		auto const& name = (*i)->name();
		bool const starts_with_underscore = name[0] == '_';
		bool const ends_with_underscore = name[name.length()-1] == '_';
		bool const is_dummy = name == "frame_dummy";
		bool const is_clones = name.find("tm_clones") != std::string::npos;
		bool const ignore = starts_with_underscore || ends_with_underscore || is_dummy || is_clones;

		if(ignore) {
			i = all.erase(i);
		} else {
			++i;
		}
	}
  
  // Print the control flow graph
  for(auto fit = all.begin(); fit != all.end(); ++fit) {
    Function *f = *fit;
    auto const index = std::distance(all.begin(), fit);

    // Make a cluster for nodes of this function
    std::cout << "\t subgraph cluster_" << index << " { \n\t\t label=\"" << f->name()
              << "\"; \n\t\t color=blue;" << std::endl;
    std::cout << "\t\t\"" << std::hex << f->addr() << std::dec << "\" [shape=box";

    if (f->retstatus() == NORETURN)
      std::cout << ",color=red";

    std::cout << "]" << std::endl;

    // Label functions by name
    std::cout << "\t\t\"" << std::hex << f->addr() << std::dec << "\" [label = \"" << f->name()
         << "\\n"
         << std::hex << f->addr() << std::dec << "\"];" << std::endl;

    std::stringstream edgeoutput;
    
    for (Block *b : f->blocks()) {
      // Don’t revisit blocks in shared code
      if (seen.find(b->start()) != seen.end())
        continue;
      seen.insert(b->start());
      std::cout << "\t\t\"" << std::hex << b->start() << std::dec << "\";" << std::endl;

      for (auto *t : b->targets()) {
        if (!t)
          continue;
        std::string s = "";
        if (t->type() == CALL)
          s = " [color=blue]";
        else if (t->type() == RET)
          s = " [color=green]";

        // Store the edges somewhere to be printed outside of the cluster
        edgeoutput << "\t\"" << std::hex << t->src()->start() << "\"-> \""
                   << t->trg()->start() << "\"" << s << std::endl;
      }
    }

    // End cluster
    std::cout << "\t}" << std::endl;

    // Print edges
    std::cout << edgeoutput.str() << std::endl;
  }
  std::cout << "}" << std::endl;
}
