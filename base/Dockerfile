## Base Image
FROM ubuntu

## Setting environment variables
ENV PYTHONPATH "${PYTHONPATH}:/usr/src/garage"

## Setting Alias for python3
RUN echo "alias python=/usr/bin/python3" >> ~/.bashrc

## Changing workdir
WORKDIR /usr/src/garage

## Adding fetch_and_run.sh
ADD garage_docker/fetch_and_run.sh /usr/local/bin/fetch_and_run.sh

## Default Packages
RUN apt update && \
    apt upgrade -y && \
    apt install python3 python3-pip gcc git mediainfo redis-server -y

## Add requirements first for amagi_library and garage
COPY requirements.txt requirements.txt
COPY pipewrench/amagi_library/requirements.txt pipewrench/amagi_library/requirements.txt

## Install python packages
RUN pip3 install -r pipewrench/amagi_library/requirements.txt && \
    pip3 install -r requirements.txt

## Add code into the docker
COPY . .

## Entrypoint for docker
# ENTRYPOINT ["sh", "/usr/local/bin/fetch_and_run.sh"]