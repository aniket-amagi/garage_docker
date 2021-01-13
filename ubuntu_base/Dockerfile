## Base Image
FROM ubuntu

## Setting environment variables
ENV PYTHONPATH "${PYTHONPATH}:/usr/src/garage"

## Default Packages
RUN apt update
RUN apt upgrade -y
RUN apt install python3 python3-pip gcc -y

## Adding files from local to Docker
ADD requirements.txt /tmp/requirements.txt
ADD fetch_and_run.sh /usr/local/bin/fetch_and_run.sh

## Install python packages
RUN pip3 install -r /tmp/requirements.txt

## Entrypoint for docker
# ENTRYPOINT ["sh", "/usr/local/bin/fetch_and_run.sh"]