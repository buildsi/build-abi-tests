#!/bin/bash

unset DEBUGINFOD_PROGRESS

if [ -z "$1" ];then
    echo Forgat path!
    exit 1
fi

if [ -z "$FLUX_URI" ];then
    echo Flux not running!
    exit 2
fi

find $1 -type f -name "*.so.*" ! -name "*hmac" | while read lib;do
    #if it
    rpm -qf $lib >/dev/null
    if [ $? != 0 ] ;then
	eu-elfclassify --unstripped $lib
	if [ $? != 0 ];then
	    continue
	fi
    fi
    echo $lib
done | flux mini bulksubmit --wait --progress --job-name=abidw1 --output={./}.out abidw --abidiff {}
