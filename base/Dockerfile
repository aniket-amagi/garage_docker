## Base Image
FROM ubuntu

## Setting environment variables
ENV PYTHONPATH "${PYTHONPATH}:/usr/src/garage"

## Changing workdir
WORKDIR /usr/src/garage

## Adding fetch_and_run.sh
ADD garage_docker/fetch_and_run.sh /usr/local/bin/fetch_and_run.sh

## Default Packages
RUN apt update && \
    apt upgrade -y && \
    apt install python3 python3-pip gcc git -y

## Add code into the docker
COPY . .

## Installing requirements from pipewrench/amagi_library and garage
RUN pip3 install -r pipewrench/amagi_library/requirements.txt && \
    pip3 install -r requirements.txt


## Entrypoint for docker
# ENTRYPOINT ["sh", "/usr/local/bin/fetch_and_run.sh"]