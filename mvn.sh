#!/bin/bash
. shmod
import dockcmd/sh@v0.0.4 docker.sh

# ensure .m2 directory created with current user
if ! [ -d "$HOME/.m2" ] 
then
  mkdir $HOME/.m2
fi

t9t=

# Maven call via docker
docker_run dcmd/mvn:v3.6.3 "$@"
