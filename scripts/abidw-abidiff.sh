#!/bin/bash

if [ -z "$1" ];then
    echo Forgat path!
    exit 1
fi

if [ -z "$FLUX_URI" ];then
    echo Flux not running!
    exit 2
fi

find $1 -type f -name "*.so.*" ! -name "*hmac" | while read lib;do
    rpm -qf $lib >/dev/null
    if [ $? != 0 ] ;then
	continue;
    fi
#    eu-elfclassify --unstripped $lib
#    if [ $? != 0 ];then
#	continue
#    fi
    echo $lib
done | flux mini bulksubmit --wait --progress --job-name=abidw1 --output={./}.out abidw --abidiff {}
