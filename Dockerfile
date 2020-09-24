FROM ubuntu:stable

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y gettext-base

COPY maven-settings.template.xml /
ENTRYPOINT ["envsubst < /maven-settings.template.xml > /maven-settings.xml"]