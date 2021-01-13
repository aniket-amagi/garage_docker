## Base Image
FROM alpine

## Default Packages
RUN apk update
RUN apk add --no-cache python3 py3-pip gcc git python3-dev musl-dev libffi-dev openssl-dev build-base jpeg-dev zlib-dev libxml2-dev libxslt-dev

## Adding files from local to Docker
ADD amagi_library/requirements.txt /tmp/amagi_library_requirements.txt
ADD requirements.txt /tmp/requirements.txt
ADD garage_docker/python_base/fetch_and_run.sh /usr/local/bin/fetch_and_run.sh

## Install python packages
RUN pip3 install -r /tmp/amagi_library_requirements.txt
RUN pip3 install -r /tmp/requirements.txt

## Entrypoint for docker
# ENTRYPOINT ["sh", "/usr/local/bin/fetch_and_run.sh"]