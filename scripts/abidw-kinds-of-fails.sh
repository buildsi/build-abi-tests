#!/bin/bash

echo  "     `grep -l "code 01" *.bt | wc -l ` Consistency mismatches"
grep -l "code 01" *.bt | xargs grep abidiff | sed -e 's/.* //' | while read lib;do
    echo -n "    $lib from "
    rpm -qf $lib
done
echo Crashes
grep -h "#0" *.bt | sed -e 's/.*at //' | sort | grep -v raise.c:49 | uniq -c | sort -rn
echo Asserts
grep -l raise.c:49 *.bt | xargs grep "#4 " | sed -e 's/.* //' | sort | uniq | while read loc;do
    echo $loc
    grep -l $loc *.bt | xargs grep abidiff | sed -e 's/.* //' | while read lib;do
	echo -n "    $lib from "
	rpm -qf $lib
    done
    echo
done
