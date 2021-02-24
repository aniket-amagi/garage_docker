## Base Imgage
FROM google/cloud-sdk:latest

## Root User
USER root

## Adding fetch_and_run.sh to run using github credentials
ADD garage_docker/fetch_and_run.sh /usr/local/bin/fetch_and_run.sh

## Adding substream code from https://github.com/aniket-amagi/substream.git
ADD garage_docker/speech_to_srt/substream /usr/local/bin/substream

## Updating tornado image with latest drivers and installing git and python3-pip
RUN apt update -y && \
    apt install ffmpeg git python3-pip -y

## Adding Python dependencies for project
ADD workflows/speech_to_srt/requirements.txt /root/requirements.txt

## Install necessary python packages
RUN pip3 install -r /root/requirements.txt

# Marking entrypoint to do from git clone
ENTRYPOINT ["/usr/local/bin/fetch_and_run.sh"]
