#!/bin/bash

flux jobs -f failed -o '{name:<20.20} {id.f58:>12}' | grep $1 | \
         sed -e 's/.* //' | while read job;do
    flux job info $job jobspec | jq .tasks[0].command[4]
done | sed -e 's/"//g'
