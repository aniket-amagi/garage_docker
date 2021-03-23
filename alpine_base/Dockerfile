## Base Image
FROM alpine

## Setting environment variables
ENV PYTHONPATH "${PYTHONPATH}:/usr/src/garage"

## Changing workdir
WORKDIR /usr/src/garage

## Adding fetch_and_run.sh
ADD garage_docker/fetch_and_run.sh /usr/local/bin/fetch_and_run.sh

## Default Packages
RUN apk update && \
    apk add git libxslt-dev && \
    apk add --no-cache --virtual .build-deps gcc python3-dev py3-pip musl-dev libffi-dev openssl-dev cargo build-base jpeg-dev zlib-dev libxml2-dev

## Add requirements first for amagi_library and garage
COPY requirements.txt requirements.txt
COPY pipewrench/amagi_library/requirements.txt pipewrench/amagi_library/requirements.txt

## Install python packages
RUN pip3 install -r pipewrench/amagi_library/requirements.txt && \
    pip3 install -r requirements.txt

## Cleanup of dependencies
RUN apk del .build-deps

## Add code into the docker
COPY . .

## Entrypoint for docker
# ENTRYPOINT ["sh", "/usr/local/bin/fetch_and_run.sh"]