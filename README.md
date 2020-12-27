# edx-compilers

Create a docker container for the Compilers course on edX:

https://courses.edx.org/courses/course-v1:StanfordOnline+SOE.YCSCS1+3T2020/course/

## Build the docker image

First clone this repos and cd to the created folder

```
docker build -t coolc .
```

## Run the container

```
docker run -it coolc /bin/bash
```

The code is installed in `/usr/class/examples`

WARNING: Any changes to files in the container will be lost when the container is shut down.
To get around this, you can create a shared folder between your OS and the container:
1. Open the Docker application, go to Preferences>Resources>FileSharing and add the path to the folder you want to share.
2. Now run the Docker container using "docker run -v <YOUR_FOLDER_NAME>:/usr/class/shared -it coolc /bin/bash", replacing "YOUR_FOLDER_NAME" with the shared folder path.
3. Now any changes you make in /usr/class/shared will appear in YOUR_FOLDER_NAME and vice-versa.

## test the COOL examples

```
cd /usr/class/examples
coolc hello_world.cl
spim hello_world.s
```
