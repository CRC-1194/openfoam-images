FROM archlinux/base

RUN pacman -Syy 

# Install dependencies
RUN pacman -S --noconfirm git gcc cmake eigen && pacman --noconfirm -Scc

# Build OpenFOAM
#RUN mkdir "/root/OpenFOAM/" 
#WORKDIR "/root/OpenFOAM"
#RUN git clone https://develop.openfoam.com/Development/ThirdParty-plus.git
#RUN cd ThirdParty-plus && git checkout v1906 && cd ..
#RUN git clone https://develop.openfoam.com/Development/OpenFOAM-plus.git 
#RUN cd OpenFOAM-plus && git checkout OpenFOAM-v1906 && source etc/bashrc && cd ..
#WORKDIR "/root/OpenFOAM/OpenFOAM-plus"
#RUN . etc/bashrc && ./Allwmake 
