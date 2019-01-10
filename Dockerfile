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
RUN cpanm --installdeps Statistics::Normality

#Install and Configure samtools
RUN wget http://github.com/samtools/samtools/releases/download/1.5/samtools-1.5.tar.bz2
RUN tar --bzip2 -xf samtools-1.5.tar.bz2
WORKDIR /bin/samtools-1.5
ENV PATH $PATH:/bin/samtools-1.5
