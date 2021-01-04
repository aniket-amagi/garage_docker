## Base Image
FROM alpine

## Default Packages
RUN apk update
RUN apk add python3 py3-pip gcc

## Adding files from local to Docker
ADD requirements.txt /tmp/requirements.txt
ADD fetch_and_run.sh /usr/local/bin/fetch_and_run.sh

## Install python packages
RUN pip3 install -r /tmp/requirements.txt

## Entrypoint for docker
# ENTRYPOINT ["sh", "/usr/local/bin/fetch_and_run.sh"]