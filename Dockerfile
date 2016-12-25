FROM jetbrains/teamcity-agent:latest

MAINTAINER Evgeny Zhivitsa

sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -yq ansible

EXPOSE 9090

VOLUME /var/run/docker.sock