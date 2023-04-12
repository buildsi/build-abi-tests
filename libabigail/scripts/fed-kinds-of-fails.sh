#!/bin/bash

rm -f missing-packages
flux jobs -f failed -c0  -o '{id.f58:>12}' -n | \
    while read job;do
	  flux job info $job jobspec | jq -r .tasks[0].command[5];
    done | while read package;do
		 if  grep "Cannot find package" $package.out > /dev/null;then
		     echo $package >> missing-packages
		  else
		      echo --- $package;
		      grep Assertion $package.out;
		      grep "wrongly" $package.out;
		 fi
	   done 
wc -l missing-packages
		 
