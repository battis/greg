# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster
WORKDIR /app
RUN pip install greg eyed3
VOLUME /config /data /podcasts
CMD [ "greg", "--configfile", "/config/greg.conf", "--datadirectory", "/data", "sync", "--downloaddirectory","/podcasts" ]