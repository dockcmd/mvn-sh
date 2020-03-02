#!/bin/bash
. shmod

include github.com/dockcmd/shmod util.sh

# Maven call via docker
exec_or_dryrun \
  $(docker_run) \
  ${UID+-u $UID:$UID} \
  --mount type=bind,source=$HOME/.m2,target=/root/.m2,consistency=delegated \
  $(docker_workdir) \
  $(docker_image dcmd/mvn v3.6.3) \
  "$@"
