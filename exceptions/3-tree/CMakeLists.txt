cmake_minimum_required(VERSION 3.4)
project(call_graph)

find_package(Dyninst REQUIRED)

# Read the cache generated from building Dyninst
load_cache(
	${Dyninst_DIR}
	Boost_INCLUDE_DIRS
	Boost_LIBRARY_DIRS
	TBB_INCLUDE_DIRS
	TBB_LIBRARY_DIRS
)

add_executable(call_graph call_graph.cpp)
target_include_directories(call_graph PRIVATE ${DYNINST_INCLUDE_DIR} ${Boost_INCLUDE_DIRS} ${TBB_INCLUDE_DIRS})
target_link_directories(call_graph PRIVATE ${Boost_LIBRARY_DIRS} ${TBB_LIBRARY_DIRS})
target_link_libraries(call_graph symtabAPI parseAPI)
