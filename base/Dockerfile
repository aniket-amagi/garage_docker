## Base Image
FROM alpine

## Setting environment variables
ENV PYTHONPATH "${PYTHONPATH}:/tmp/garage"

## Changing workdir
WORKDIR /tmp/garage

## Default Packages
RUN apk update
RUN apk add --no-cache python3 py3-pip gcc git python3-dev musl-dev libffi-dev openssl-dev build-base jpeg-dev zlib-dev libxml2-dev libxslt-dev

## Adding files from local to Docker
ADD garage_docker/python_base/fetch_and_run.sh /usr/local/bin/fetch_and_run.sh
ADD pipewrench/requirements.txt /tmp/pipewrench_requirements.txt
ADD requirements.txt /tmp/requirements.txt

## Install python packages
RUN pip3 install -r /tmp/pipewrench_requirements.txt
RUN pip3 install -r /tmp/requirements.txt

## Copying Project
COPY . .

## Entrypoint for docker
# ENTRYPOINT ["sh", "/usr/local/bin/fetch_and_run.sh"]