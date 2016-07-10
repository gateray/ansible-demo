#!/bin/bash
#

dtstr=`date +%Y%m%d@%H%M%S`
#$1: {{ servicename }}
#$2: {{ updatetype }}
echo "${dtstr} $1 $2">>update-log.bin
echo ${dtstr}
