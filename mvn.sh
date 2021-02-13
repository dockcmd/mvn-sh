#!/bin/bash
. shmod
import dockcmd/sh@v0.0.3 docker.sh

# ensure .m2 directory created with current user
if ! [ -d "$HOME/.m2" ] 
then
  mkdir $HOME/.m2
fi

# Maven call via docker
run \
  $(docker_run) \
  $(docker_user) \
  $(docker_home_workdir) \
  $(docker_image dcmd/mvn:v3.6.3) \
  "$@"
