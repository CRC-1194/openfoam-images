# Core OpenFOAM docker image for Arch Linux

A minimal Docker Image/Container (whatever it's called) with only these OpenFOAM libraries compiled in it to keep the size of the image small:

```
    -lfiniteVolume \
    -lmeshTools \
    -lsurfMesh \
    -lsampling \
    -lfileFormats \
```

Used for CI of projects that build upon these OpenFOAM libraries. 
