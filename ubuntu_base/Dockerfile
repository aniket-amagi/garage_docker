## Base Image
FROM ubuntu

## Setting environment variables
ENV PYTHONPATH "${PYTHONPATH}:/tmp/garage"

## Default Packages
RUN apt update
RUN apt upgrade -y
RUN apt install python3 python3-pip gcc -y

## Adding files from local to Docker
ADD pipewrench/amagi_library/requirements.txt /tmp/pipewrench_requirements.txt
ADD requirements.txt /tmp/requirements.txt
ADD garage_docker/fetch_and_run.sh /usr/local/bin/fetch_and_run.sh

## Install python packages
RUN pip3 install -r /tmp/requirements.txt
RUN pip3 install -r /tmp/pipewrench_requirements.txt

## Copying Project
COPY . .

## Entrypoint for docker
# ENTRYPOINT ["sh", "/usr/local/bin/fetch_and_run.sh"]