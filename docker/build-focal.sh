#!/usr/bin/env bash

OPENFOAM_VERSION=$1

if [ -z "$OPENFOAM_VERSION" ]; 
then 
    echo Provide the OpenFOAM version suffix as argument: v2012, v2112, etc.
    exit 1
fi

# Options used:
#   -t : set Docker tag
#   -f : Docker file to be used to build the image
sudo docker build . \
	-t openfoam-"$OPENFOAM_VERSION"_ubuntu-focal:latest \
	-f openfoam-"$OPENFOAM_VERSION"_ubuntu-focal \
	# --no-cache # Try in case something goes wrong with package updates. 
