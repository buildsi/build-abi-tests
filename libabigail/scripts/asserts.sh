#!/bin/bash

grep -h Assertion *.out | \
sed -e 's^Downloading .*abipkgdiff^abipkgdiff^' | \
sort | uniq | sed -e 's/abipkgdiff: //' -e 's/: .*//' | \
while read str;do
    echo $str `grep -l $str *.out | wc -l`
    grep -l $str *.out | sed -e 's/.out//'
done
