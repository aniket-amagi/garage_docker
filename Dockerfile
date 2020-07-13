## Base Image
FROM alpine

## Default Packages
RUN apk update
RUN apk add python3 py3-pip git

## Adding files from local to Docker
ADD fetch_and_run.sh /usr/bin/fetch_and_run.sh
ADD requirements.txt /tmp/requirements.txt

## Install python packages
RUN pip3 install -r /tmp/requirements.txt

## Entrypoint for docker
ENTRYPOINT ["sh", "/usr/local/bin/fetch_and_run.sh"]
