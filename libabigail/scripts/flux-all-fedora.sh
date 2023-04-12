#!/bin/bash

flux mini bulksubmit --wait --progress -t 60m --job-name={} --output={}.out fedabipkgdiff --self-compare -a --from fc36 {}
