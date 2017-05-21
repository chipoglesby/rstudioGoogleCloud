############################################################
# Dockerfile to build Google Cloud images
# Based on Debian Jessie
############################################################

# Set the base image to Ubuntu
FROM launcher.gcr.io/google/debian8:latest

# File Author
MAINTAINER Chip Oglesby

# Prepare the image.
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
  apt-get install -y -qq --no-install-recommends git wget unzip python php5-mysql php5-cli php5-cgi openjdk-7-jre-headless openssh-client python-openssl && \
  apt-get clean && \
  git clone https://github.com/chipoglesby/encryptedDashboard.git && \
  sudo apt-get install docker-ce && \
  curl -L https://github.com/docker/compose/releases/download/1.13.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/docker-compose
