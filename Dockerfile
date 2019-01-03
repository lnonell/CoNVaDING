#################################################################
# Dockerfile
#
# Version:          1
# Software:         CoNVaDING and its dependencies
# Description:      CoNVaDING (Copy Number Variation Detection In Next-generation sequencing Gene panels)
# Website:          https://molgenis.gitbooks.io/convading/
# Tags:             None, for the moment
# Base Image:       perl:5.26
# Mantainer:        Lara Nonell
#################################################################

FROM ubuntu:14.04

# Update the repository sources list
RUN apt-get update

# Install compiler and perl stuff
RUN apt-get install --yes \
build-essential \
gcc-multilib \
apt-utils \
perl \
expat \
libexpat-dev 

RUN apt-get install -y cpanminus
RUN cpanm Statistics::Normality
