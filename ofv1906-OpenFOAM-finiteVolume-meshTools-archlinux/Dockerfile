FROM archlinux/base

RUN pacman -Syy 

# Install dependencies
RUN pacman -S --noconfirm git gcc openmpi make flex bison && pacman --noconfirm -Scc

# TODO: Scotch.

# Lean OpenFOAM build, building libraries: OpenFOAM, finiteVolume and meshTools
RUN mkdir "/root/OpenFOAM/" 
WORKDIR "/root/OpenFOAM"
RUN git clone https://develop.openfoam.com/Development/ThirdParty-plus.git && cd ThirdParty-plus && git checkout v1906 && cd .. && \
    git clone https://develop.openfoam.com/Development/OpenFOAM-plus.git && \
    cd OpenFOAM-plus && git checkout OpenFOAM-v1906 && rm -rf .git && source etc/bashrc && cd .. && \
    rm -rf $FOAM_TUTORIALS
WORKDIR "/root/OpenFOAM/OpenFOAM-plus"
RUN source etc/bashrc && cd wmake/src && ./Allmake && cd ..
WORKDIR "/root/OpenFOAM/OpenFOAM-plus/src"
ENV WM_NCOMPPROCS=4
ADD AllwmakeSrc ./AllwmakeSrc 
RUN source ../etc/bashrc && ./AllwmakeSrc 
