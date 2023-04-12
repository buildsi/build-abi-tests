#!/bin/bash

unset DEBUGINFOD_PROGRESS

if [ -z "$FLUX_URI" ];then
    echo Flux not running!
    exit 2
fi

rpm -qa --queryformat "%{SOURCERPM}\n" |  sed -e 's/\(.*\)-.*-.*/\1/' | sort | \
    uniq | \
    flux mini bulksubmit --wait --progress --job-name={} --output={}.out -t 60m \
	 fedabipkgdiff --self-compare -a --from fc36 {}

