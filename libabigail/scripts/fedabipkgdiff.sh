#!/bin/bash

unset DEBUGINFOD_PROGRESS

echo fedabipkgdiff $*

PATH=/usr/share/Modules/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/home/ben/Shared/Work/test/flux-x86_64/bin/
if [ `hostname` == "darkstar" ]
then
    PATH=/home/ben/Work/test/libabigail-x86_64/bin/:$PATH
    LD_LIBRARY_PATH=/home/ben/Work/test/libabigail-x86_64/lib/ /usr/bin/time /home/ben/Work/test/libabigail-x86_64/bin/fedabipkgdiff $*
else
    PATH=/home/ben/Shared/Work/test/libabigail-x86_64/bin/:$PATH
    LD_LIBRARY_PATH=/home/ben/Shared/Work/test/libabigail-x86_64/lib/ /usr/bin/time /home/ben/Shared/Work/test/libabigail-x86_64/bin/fedabipkgdiff $*
fi
