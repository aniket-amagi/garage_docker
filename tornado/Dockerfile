FROM amagidevops/tornado:1.0
USER root
ADD workflows/tornado/docker/fetch_and_run.sh /usr/local/bin/fetch_and_run.sh

RUN mkdir -p /data/assets
RUN mkdir -p /data/out
RUN mkdir -p /data/models

## Default Packages

## Adding additional package to install Python3.8
RUN apt install software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa

RUN apt update
RUN apt upgrade -y
RUN apt install git python3.8-venv -y
RUN apt autoremove -y

# Adding new python3.8 virtual environment
RUN python3.8 -m venv venv

## Adding Python dependencies for project
ADD workflows/tornado/requirements.txt /root/requirements.txt
ADD amagi_library/requirements.txt /root/amagi_library_requirements.txt

## Install necessary python packages
RUN ./venv/bin/pip3 install -r /root/requirements.txt
RUN ./venv/bin/pip3 install -r /root/amagi_library_requirements.txt

ENTRYPOINT ["/usr/local/bin/fetch_and_run.sh"]

