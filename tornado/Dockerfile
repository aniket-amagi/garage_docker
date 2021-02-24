## Base Imgage
FROM amagidevops/tornado:1.0

## Root User
USER root

## Adding fetch_and_run.sh to run using github credentials
ADD garage_docker/fetch_and_run.sh /usr/local/bin/fetch_and_run.sh

## Folders for tornado to run
RUN mkdir -p /data/assets && \
    mkdir -p /data/out && \
    mkdir -p /data/models

## Adding additional package to install Python3.8
RUN apt install software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa

## Updating tornado image with latest drivers and installing git and python3-venv
RUN apt update && \
    apt upgrade -y && \
    apt install git python3.8-venv -y && \
    apt autoremove -y

# Adding new python3.8 virtual environment
RUN python3.8 -m venv venv

## Adding Python dependencies for project
ADD workflows/tornado/requirements.txt /root/requirements.txt
ADD pipewrench/amagi_library/requirements.txt /root/pipewrench_requirements.txt

## Install necessary python packages
RUN ./venv/bin/pip3 install -r /root/requirements.txt && \
    ./venv/bin/pip3 install -r /root/pipewrench_requirements.txt

## Marking entrypoint to do from git clone
ENTRYPOINT ["/usr/local/bin/fetch_and_run.sh"]

