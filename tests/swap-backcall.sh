#!/bin/bash

echo -n "swap backcall test: "
export SWAP_LIB_FILENAME=libswapfile
echo libcall1.so libcall2.so > $SWAP_LIB_FILENAME

LD_AUDIT=../tools/swap-libs-audit.so LD_LIBRARY_PATH=. ./abi2way-main1 2>&1 |:
if [ ${PIPESTATUS[0]} == 0 ]; then
    echo PASS
else
    echo FAIL
fi

