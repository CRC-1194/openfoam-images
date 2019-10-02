# Core OpenFOAM docker image for Arch Linux

OpenFOAM is huge. Often we program our own libraries and applications that only link with a few existing libraries in OpenFOAM. For Continuous Integration (CI), it makes then sense to have an image that we can use to quickly test if the build fails, as well as if the unit and smoke tests run. If we build OpenFOAM entirely, this image will be 4.4 gigabytes large. The idea here is to use the alternative global installation script `AllwmakeSrc` to just build a subset of OpenFOAM libraries in the image. 

A minimal Docker Image/Container (whatever it's called) with only these OpenFOAM libraries compiled in it to keep the size of the image small:

```
    -lfiniteVolume \
    -lmeshTools \
    -lsurfMesh \
    -lsampling \
    -lfileFormats \
```

Used for CI of projects that build upon these OpenFOAM libraries. 
