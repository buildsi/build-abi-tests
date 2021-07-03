#!/bin/bash

echo -n "abidiff exception "
abidiff ../tests/librttiexcep_v1.so ../tests/librttiexcep_v2.so
if [ $? == 0 ];then
    echo FAIL
else
    echo PASS
fi

