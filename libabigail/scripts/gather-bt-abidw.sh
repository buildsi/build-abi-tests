#!/bin/bash

gdb --silent --ex "set pagination off" --ex "set confirm off" \
    -ex run \
    -ex bt --ex quit --args abidw --abidiff $1

#    -ex "set env OMP_NUM_THREADS 1" -ex run \
