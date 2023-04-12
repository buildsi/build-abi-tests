#!/bin/bash

flux jobs -f failed -c0  -o '{id.f58:>12}' -n | while read job;do
    package=`flux job info $job jobspec | jq -r .tasks[0].command[5]`
    echo -n "$package - "
    flux job status $job
    retval=$?
    if [ $retval -eq 1 ];then
	echo "Could not load ELF"
	continue;
    fi
    if [ -e $package.out ];then   
       if grep "Cannot find package" $package.out >/dev/null;then
	  echo "Cannot find package"
	  continue
       fi
       if grep Assertion $package.out >/dev/null;then
	  echo Assertion
	  continue
       fi
       if grep "wrongly" $package.out >/dev/null;then
	  echo "Wrongly"
	  continue
       fi
       if grep -l "No symbol table found: Skipping symtab load." $package.out >/dev/null;then
	  echo "No Symbol table"
	  continue
       fi
    fi
    echo Unknown $retval
done

