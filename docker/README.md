## Docker Tutorial

This Docker Tutorial contains generic examples plus usage instructions for the [Tourmaline Docker container](https://hub.docker.com/r/aomlomics/tourmaline).

### Links

* https://jonnylangefeld.github.io/learning/Docker/How%2Bto%2BDocker.html
* https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
* https://takacsmark.com/dockerfile-tutorial-by-example-dockerfile-best-practices-2018/
* https://github.com/hugheylab/Snakemake-Docker-Tutorial/blob/master/Dockerfile
* https://colinfay.me/docker-r-reproducibility/
* https://aboullaite.me/dockerfile-run-vs-cmd-vs-entrypoint/
* https://docs.docker.com/engine/reference/builder/
* https://docs.docker.com/engine/reference/commandline/commit/
* https://www.linux.com/training-tutorials/how-use-dockerhub/
* https://www.techrepublic.com/article/how-to-use-docker-tags-to-add-version-control-to-images/
* https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes
* https://www.bioconductor.org/help/docker/
* https://colinfay.me/docker-r-reproducibility/

### Example image

Create `Dockerfile`, stringing together `RUN` commands with `&&`:

```dockerfile
FROM ubuntu
RUN apt-get upgrade && apt-get update && apt-get install -y python3
```

Build Docker image:

```
docker build --build-arg WHEN=2020-10-01 -t my-ubuntu-image .
```

See your Docker image in the list of images and note the `IMAGE ID`:

```
docker images
```

Add a tag later (with the version number):

```
docker tag IMAGE_ID my-ubuntu-image:v1.6.14.2017
```

Create a container from your Docker image:

```
docker run -v /path/of/volume:/path/in/container -it my-ubuntu-image
```

Commit and push to DockerHub:

```
docker commit -m "Updated Ubuntu" -a "Jack Wallen" ubuntu-testing-June HUBUSER/my-ubuntu-image:v1.6.14.2017
docker login
docker push HUBUSER/my-ubuntu-image
```

### Tourmaline image

Create `Dockerfile`:

```dockerfile
# Use the official QIIME 2 image as a parent image
FROM quay.io/qiime2/core:2021.2

# Label information
LABEL maintainer="Luke Thompson"
LABEL description="Docker image to build the Tourmaline Snakemake workflow for QIIME 2"

# Set up bash environment: aliases, colors, history
RUN echo "alias cd..='cd ..'" >> ~/.bashrc
RUN echo "alias l='ls --color'" >> ~/.bashrc
RUN echo "alias la='ls -a --color'" >> ~/.bashrc
RUN echo "alias lal='ls -alh --color'" >> ~/.bashrc
RUN echo "alias ll='ls -lh --color'" >> ~/.bashrc
RUN echo "alias rm='rm -i'" >> ~/.bashrc
RUN echo "alias taill='ls -lrt | tail'" >> ~/.bashrc
RUN echo "bind '\"\e[A\": history-search-backward'" >> ~/.bashrc
RUN echo "bind '\"\e[B\": history-search-forward'" >> ~/.bashrc

# Install dependencies
RUN apt-get update -y && \
 apt-get install -y \
 build-essential \
 apt-utils \
 nano \
 unzip \
 pandoc && \
 rm -rf /var/lib/apt/lists/*
 
RUN R -e "install.packages(c('BiocManager'), dependencies=TRUE, repos='http://cran.rstudio.com/')" && \
 R -e "BiocManager::install(c('msa', 'odseq'))"
 
RUN pip install git+https://github.com/biocore/empress.git && \
 pip install tabview && \
 pip install tabulate && \
 pip install biopython && \
 qiime dev refresh-cache

# Add conda installation dir to $PATH (instead of doing 'conda activate')
ENV PATH="/opt/conda/envs/qiime2-2021.2/bin:$PATH"

# This is necessary to install snakemake using conda
SHELL ["conda", "run", "-n", "qiime2-2021.2", "/bin/bash", "-c"]
 
# Install snakemake
RUN conda update -n base -c defaults conda
RUN conda install -c bioconda snakemake muscle clustalo
```

Build Docker image (update to current data and version number):

```
docker build --build-arg WHEN=2020-10-01 -t tourmaline .
```

List your Docker images and note your `IMAGE ID`:

```
docker images
```

Add a tag with the qiime2 version (already has a tag for "latest"):

```
docker tag IMAGE_ID tourmaline:2020.8
```

Create a container from your Docker image:

```
docker run -v $HOME:/data -it tourmaline
```

Note 1: Symbolic links in a mounted volume will not work.

Note 2: It seems to be important to create the container before uploading its image to DockerHub.

### Upload to DockerHub

List your Docker containers and note the `CONTAINER ID`:

```
docker ps -a
```

Commit container(s):

```
docker container commit -m "Updated Tourmaline" -a "Luke Thompson" CONTAINER_ID tourmaline:latest
docker container commit -m "Updated Tourmaline" -a "Luke Thompson" CONTAINER_ID tourmaline:2020.8
```

Inspect commit SHA256 that prints after commit:

```
docker inspect -f "{{ .Config.Env }}" SHA256
```

Push container(s) to DockerHub:

```
docker login

docker image tag tourmaline:latest docker.io/lukenoaa/tourmaline:latest
docker image tag tourmaline:2021.2 docker.io/lukenoaa/tourmaline:2021.2

docker image push docker.io/lukenoaa/tourmaline:latest
docker image push docker.io/lukenoaa/tourmaline:2021.2
```

### Create container

Create a container from Docker image:

```
docker run -it -v /path/of/volume:/path/in/container tourmaline /bin/bash
```

### Remove images and containers

Remove a Docker container:

```
docker container rm CONTAINER_ID
```

Remove a Docker image:

```
docker rmi IMAGE_ID
```

Stop a Docker container:

```
docker container stop CONTAINER_ID
```

Remove:

- all stopped containers
- all networks not used by at least one container
- all images without at least one container associated to them
- all build cache 

```
docker system prune -a
```

### Download images from DockerHub and run locally

First, list your Docker images and make sure the Docker daemon is working:

```
docker images
```

Then download the Docker image (later we'll add a version with the `lastest` tag and change the owner to `aomlomics`):

```
docker pull aomlomics/tourmaline:2020.8
```

List your Docker images again to make sure it's there:

```
docker images
```

Now create a container (maybe don't need to put `/bin/bash` after image name, but definitely want to specify a volume with -v):

```
docker run -v /path/of/volume:/path/in/container -it lukenoaa/tourmaline:2020.8
```

### Move repositories among organizations in DockerHub

If you want to move your repository among organizations, then you would need to do the following:

Pull your image `docker pull <old-organization>/<repo-name>:<tag-name>`

Set the new tag on an image:

```
docker tag lukenoaa/tourmaline:latest aomlomics/tourmaline:latest
docker tag lukenoaa/tourmaline:2021.2 aomlomics/tourmaline:2021.2
```

Push the image on DockerHub:

```
docker push aomlomics/tourmaline:latest
docker push aomlomics/tourmaline:2021.2
```

Remove the image from the host:

```
docker rmi lukenoaa/tourmaline:latest
docker rmi lukenoaa/tourmaline:2021.2
```

And also go to the Docker Hub for the old repository and select Manage Repository > Settings > Delete Repository.

**Note**: In order to remove an image from the host, please make sure that there are no containers actively based on it.

### Questions (answered)

* How to set working directory. In Dockerfile: Set WORKDIR with `WORKDIR /usr/src/app`. By default, the qiime2/tourmaline container opens in `/data`.

* How do I update an image locally that's already on DockerHub? Should be usual commands.

* How to work with volumes?

  
