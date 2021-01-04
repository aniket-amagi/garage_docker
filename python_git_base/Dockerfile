## Base Image
FROM alpine

## Default Packages
RUN apk update
RUN apk add python3 py3-pip git

## Adding files from local to Docker
ADD fetch_and_run.sh /usr/local/bin/fetch_and_run.sh

## Entrypoint for docker
ENTRYPOINT ["sh", "/usr/local/bin/fetch_and_run.sh"]
