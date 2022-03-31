#!/bin/bash

echo -n "abi2way-compat test: "
abicompat abi2way-main1 libcall1.so libcall2.so >/dev/null
if [ $? != 0 ]; then
    echo PASS
else
    echo FAIL
fi
