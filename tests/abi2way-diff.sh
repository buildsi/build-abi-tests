#!/bin/bash

echo -n "abi2way-diff test: "
abidiff libcall1.so libcall2.so >/dev/null
if [ $? != 0 ]; then
    echo PASS
else
    echo FAIL
fi
