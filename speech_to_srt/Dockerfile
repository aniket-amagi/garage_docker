## Base Imgage
FROM google/cloud-sdk:slim

## Root User
USER root

## Adding fetch_and_run.sh to run using github credentials
ADD garage_docker/fetch_and_run.sh /usr/local/bin/fetch_and_run.sh

## Updating tornado image with latest drivers and installing git and python3-pip
RUN apt update && \
    apt install ffmpeg git python3-pip -y && \
    apt upgrade -y && \
    apt autoclean -y && \
    apt autoremove -y

## Adding substream code from https://github.com/aniket-amagi/substream.git
ADD services/substream /usr/local/bin/substream

## Adding Python dependencies for project + amagi_library
COPY workflows/speech_to_srt/requirements.txt workflows/speech_to_srt/requirements.txt
COPY pipewrench/amagi_library/requirements.txt pipewrench/amagi_library/requirements.txt

## Install necessary python packages
RUN pip3 install -r /usr/local/bin/substream/requirements.txt
RUN pip3 install -r workflows/speech_to_srt/requirements.txt
RUN pip3 install -r pipewrench/amagi_library/requirements.txt

# Marking entrypoint to do from git clone
ENTRYPOINT ["/usr/local/bin/fetch_and_run.sh"]
