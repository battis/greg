# syntax=docker/dockerfile:1

FROM python:3.8
WORKDIR /app
RUN apt update && apt install wget
RUN pip install greg eyed3
VOLUME /config /data /podcasts
CMD [ "greg", "--configfile", "/config/greg.conf", "--datadirectory", "/data", "sync", "--downloaddirectory","/podcasts" ]