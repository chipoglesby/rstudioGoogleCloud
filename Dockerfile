############################################################
# Dockerfile to build Google Cloud images
# Based on Debian Jessie
############################################################

# Set the base image to Ubuntu
FROM gcr.io/google-containers/debian-8-jessie-v20170426

# File Author
MAINTAINER Chip Oglesby

# Update packages
RUN apt-get update && \
  apt-get upgrade -y && \
  apt-get install git && \
  apt-get clean -y && \
  apt-get autoclean -y && \
  apt-get autoremove -y
  
#  Get the encrypted dashboard folder from git
RUN git clone https://github.com/chipoglesby/encryptedDashboard.git
