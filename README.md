# edx-compilers

Create a docker container for the Compilers course on edX:

https://courses.edx.org/courses/course-v1:StanfordOnline+SOE.YCSCS1+3T2020/course/

## Build the docker image

First clone this repos and cd to the created folder

```
docker build -t coolc .
```

## Run the container

WARNING: All code edited in the container will be lost.

```
docker run -it coolc /bin/bash
```

The code is installed in `/usr/class/examples`

## test the COOL examples

```
cd /usr/class/examples
coolc hello_world.cl
spim hello_world.s
```
