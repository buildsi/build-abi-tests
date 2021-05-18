#!/bin/bash

echo -n "abicompat backcall "
abicompat underlinktest libunderlink1.so libunderlink2.so
if [ $? == 0 ];then
    echo FAIL
else
    echo PASS
fi

