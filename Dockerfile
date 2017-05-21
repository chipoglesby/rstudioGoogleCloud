############################################################
# Dockerfile to build Google Cloud images
# Based on Debian Jessie
############################################################

# Set the base image to Ubuntu
FROM launcher.gcr.io/google/debian8:latest

# File Author
MAINTAINER Chip Oglesby

#  Get the encrypted dashboard folder from git
RUN git clone https://github.com/chipoglesby/encryptedDashboard.git
