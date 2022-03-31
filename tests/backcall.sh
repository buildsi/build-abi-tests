#!/bin/bash

echo -n "backcall run test 1: "
LD_LIBRARY_PATH=. ./abi2way-main1 >/dev/null
if [ $? == 0 ]; then
    echo PASS
else
    echo FAIL
fi

echo -n "backcall run test 2: "
LD_LIBRARY_PATH=. ./abi2way-main2 >/dev/null
if [ $? == 0 ]; then
    echo PASS
else
    echo FAIL
fi
