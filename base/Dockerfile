## Base Image
FROM alpine

## Setting environment variables
ENV PYTHONPATH "${PYTHONPATH}:/tmp/garage"

## Changing workdir
WORKDIR /tmp/garage

## Adding fetch_and_run.sh
ADD garage_docker/fetch_and_run.sh /usr/local/bin/fetch_and_run.sh

## Default Packages
RUN apk update && apk add git libxslt-dev && apk add --no-cache --virtual .build-deps \
 gcc python3-dev py3-pip musl-dev libffi-dev openssl-dev cargo build-base jpeg-dev zlib-dev libxml2-dev 

## Adding requirements.txt from local to Docker
ADD pipewrench/amagi_library/requirements.txt /tmp/pipewrench_requirements.txt
ADD requirements.txt /tmp/requirements.txt

## Install python packages
RUN pip3 install -r /tmp/pipewrench_requirements.txt && \
pip3 install -r /tmp/requirements.txt

## Cleanup of dependencies
RUN apk del .build-deps

## Copying Project
COPY . .

## Entrypoint for docker
# ENTRYPOINT ["sh", "/usr/local/bin/fetch_and_run.sh"]