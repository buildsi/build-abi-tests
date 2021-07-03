#!/bin/bash

echo -n "abicompat exception "
abicompat ../tests/use-rtti-excep ../tests/librttiexcep_v1.so ../tests/librttiexcep_v2.so
if [ $? == 0 ];then
    echo FAIL
else
    echo PASS
fi

