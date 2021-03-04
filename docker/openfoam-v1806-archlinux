FROM archlinux

# Install dependencies
# TODO: Install ptscotch, it's not available with pacman. 
RUN pacman -Syyu --noconfirm git gcc openmpi base-devel flex bison boost boost-libs 
# Build OpenFOAM in /opt
RUN mkdir "/opt/OpenFOAM/" 
WORKDIR "/opt/OpenFOAM"
# Clone openfoam from gitlab, checkout the git tag OpenFOAM-v1806 and rename the folder.
RUN git clone https://develop.openfoam.com/Development/openfoam.git && cd openfoam && git checkout OpenFOAM-v1906 && cd .. && mv openfoam OpenFOAM-v1806 
WORKDIR "/opt/OpenFOAM/OpenFOAM-v1806"
# Initialize and update the submodules, compile everything. 
RUN git submodule init && git submodule update && . etc/bashrc && ./Allwmake 
