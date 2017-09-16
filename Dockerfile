FROM jetbrains/teamcity-agent:2017.1.4

MAINTAINER Evgeny Zhivitsa

RUN apt-get update \
  && apt-get install -yq software-properties-common \
  && apt-add-repository ppa:ansible/ansible \
  && apt-get update \
  && apt-get install -yq ansible

EXPOSE 9090

VOLUME /var/run/docker.sock