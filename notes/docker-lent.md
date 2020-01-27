
* Make sure your user on Linux is in the docker group:

Create a docker group 

```
$ sudo groupadd docker
```

Add your user to the docker group.

```
$ sudo usermod -aG docker $USER
```


docker run -t -i openfoamplus/of_v1806_centos73 /bin/bash


Create an image from a running container with "docker commit":  


Commands to build LENT on the image

yum install git

