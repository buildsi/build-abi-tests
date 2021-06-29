#!/bin/bash

echo -n "underlink run test "
LD_LIBRARY_PATH=../tests ../tests/underlinktest >/dev/null
if [ $? == 0 ]; then
    echo PASS
else
    echo FAIL
fi
