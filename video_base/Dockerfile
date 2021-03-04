FROM amagidevops/garage:base

# Non interactive tzdata install (https://stackoverflow.com/questions/44331836/apt-get-install-tzdata-noninteractive)
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata

## Add ffmpeg and mediainfo
RUN apt install ffmpeg mediainfo -y