#!/bin/bash

if [ -z "$FLUX_URI" ];then
    echo Flux not running!
    exit 2
fi

scripts/flux-pull-fails-2.sh abidw1 | while read lib;do
    echo $lib
done | flux mini bulksubmit --wait --progress --job-name=abidw-fail --output={./}.bt scripts/gather-bt-abidw.sh {}

