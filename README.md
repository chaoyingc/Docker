## Docker:
Docker provides a software layer that sits above the operating system to support containerization.Containers allow a developer to package up an application with all of the parts it needs, such as libraries and other dependencies, and ship it all out as one package.
Installation:
For Mac : [Mac](https://docs.docker.com/v17.09/docker-for-mac/install/)
For windows: [Windows](https://docs.docker.com/v17.09/docker-for-windows/install/#download-docker-for-windows)
For Ubuntu :[Ubuntu](https://docs.docker.com/v17.09/engine/installation/linux/docker-ce/ubuntu/)
## How does it work:
This repository creates a data science work enviroment in docker container, the dockerfile pulls installs python3,numpy,pandas,sklearn,jupyter, venv and git from Ubuntu and creates a container with a virtual environement Ubuntu,and jupyter notebook in it.
## run the Dockerfile:
1, get this repository in local:
```
$ git clone https://github.com/chaoyingc/Docker.git
$ cd Docker
```
2, pull ubuntu image:
```
$ docker pull ubuntu
```
2, To see which images are present locally, use the command:
```
$ docker images
```
3,build a container based in the docker image:
```
$ docker build -t image_name .
```
4, run the container :
```
$ docker run container_name
```
You will the url of jupyter notebook to work with.
