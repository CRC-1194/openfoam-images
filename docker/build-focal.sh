#!/usr/bin/env bash

# Options used:
#   -t : set Docker tag
#   -f : Docker file to be used to build the image
sudo docker build . \
	-t openfoam-v2012_ubuntu-focal:latest \
	-f openfoam-v2012_ubuntu-focal \
	# --no-cache # Try in case something goes wrong with package updates. 
