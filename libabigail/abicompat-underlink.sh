#!/bin/bash

echo -n "abicompat underlink "
abicompat -u ../tests/libunderlink1.so | grep backcall
if [ $? != 0 ];then
    echo FAIL
else
    echo PASS
fi

