#!/bin/bash

flux jobs -f timeout -c0  -o '{id.f58:>12}' -n | while read job;do
    flux job info $job jobspec | jq -r .tasks[0].command[5];
done

