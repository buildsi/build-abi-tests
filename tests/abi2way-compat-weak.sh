#!/bin/bash

echo -n "abi2way-compat-weak test: "
abicompat abi2way-main1 libcall2.so >/dev/null
if [ $? != 0 ]; then
    echo PASS
else
    echo FAIL
fi
