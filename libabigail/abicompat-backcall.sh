#!/bin/bash

echo -n "abicompat backcall "
abicompat ../tests/underlinktest ../tests/libunderlink1.so ../tests/libunderlink2.so
if [ $? == 0 ];then
    echo FAIL
else
    echo PASS
fi

