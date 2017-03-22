#!/bin/bash

# make sure to decrypt the env files first
# blackbox_postdeploy

#  env file name
ENVFILE="env"

# set the stack folder
stackfolder="$1"
[ -z "${stackfolder}" ] && echo please specify stack folder for deployment && exit 1

# set the stackname
stackname="$2"
[ -z "${stackname}" ] && stackname=${stackfolder}

# check if the env file exists
envcli=""
[ -f "${stackfolder}/${ENVFILE}" ] && envcli="--env-file ${ENVFILE}"

# execute the stack
pushd ${stackfolder}
rancher up ${envcli} -d -p -u
popd
