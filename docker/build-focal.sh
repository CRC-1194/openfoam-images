#!/usr/bin/bash

sudo docker build . \
	-t openfoam-v2012_ubuntu-focal:latest \ # Docker tag
	-f openfoam-v2012_ubuntu-focal \ # Dockerfile 
	# --no-cache # Try in case something goes wrong with package updates. 
