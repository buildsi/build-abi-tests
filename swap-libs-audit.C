// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
// -*- Mode: C++ -*-
//
// Copyright (C) 2020-2021 Red Hat, Inc.
//
// Author: Ben Woodard

#include <link.h>

#include <stdlib.h>

#include <string>
#include <fstream>
#include <map>

using std::string;
using std::ifstream;
using std::map;
using std::pair;

map<string, string> swaps;

extern "C" {

unsigned int la_version( unsigned int v){
  char *swap_filename=getenv("SWAP_LIB_FILENAME");
  if (swap_filename == NULL)
    return 0;

  ifstream swapfile;
  try {
    swapfile.open(swap_filename);
    while (!swapfile.eof()){
      string lib;
      string replacement;
      swapfile >> lib >> replacement;
      swaps.insert( make_pair( lib, replacement));
    }
    swapfile.close();
  }
  catch (std::ifstream::failure &e) {
    return 0;
  }
  return LAV_CURRENT;
}

char *la_objsearch(const char *name, uintptr_t *cookie, unsigned int flag){
  if ( swaps.find(name) != swaps.end())
    return const_cast<char*>(swaps[name].c_str());
  // it is noted that that name parameter is a const char* while the return
  // value is char *. It is a bug in the interface.
  return const_cast<char*>(name);
}

}
