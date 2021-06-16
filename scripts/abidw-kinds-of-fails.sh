#!/bin/bash

echo  "     `grep -l "code 01" *.bt | wc -l ` Consistency mismatches"
echo Crashes
grep -h "#0" *.bt | sed -e 's/.*at //' | sort | uniq -c | sort -rn
echo Asserts
grep -l raise.c:49 *.bt | xargs grep "#4 " | sed -e 's/.* //' | sort | uniq -c
