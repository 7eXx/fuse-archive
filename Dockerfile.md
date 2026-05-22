# Build fuse-archive inside docker
This project can be built inside a docker container using the Dockerfile in this directory.

```sh
docker build -t fuse-archive-builder .
docker run --privileged -it --name fuse-archive-builder -v ${PWD}:/usr/src/fuse-archive fuse-archive-builder
```