#!/bin/bash
#
projectdir=$1
classfile=$2
remotesrc=$3
backupdir=$4
cd ${projectdir}
file=`find . -type f -name ${classfile}`
if [ -z "$file" ]; then
    for jar in `ls -1 WEB-INF/lib/smartnew*`; do
        fileinjar=`jar tf $jar | egrep -o "^.*/?${classfile}\$"`
        if [ -n "$fileinjar" ]; then
            install -D ${jar} ${backupdir}/${jar}
            mkdir -p ${remotesrc}/`dirname ${fileinjar}`
            mv ${remotesrc}/${classfile} ${remotesrc}/`dirname ${fileinjar}`
            jar uf ${jar} -C ${remotesrc}/ ${fileinjar}
            break;
        fi
    done
else
    install -D ${file} ${backupdir}/${file}
    install ${remotesrc}/${classfile} ${file}  
fi
