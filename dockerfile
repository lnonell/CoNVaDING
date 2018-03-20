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

#Perl 

FROM perl:5.26
COPY . /usr/src/convading
WORKDIR /usr/src/convading
CMD [ "perl"]

#Install samtools (from biocontainers/samtools dockerfile)

RUN conda install samtools=1.3.1
WORKDIR /data/

CMD ["samtools"]

# add samtools and perl to path
ENV PATH=/my-software/samtools/:$PATH \
    PERL_PATH=~/perl \
    PERLLIB=$PERL_PATH/lib/perl:$PERL_PATH/lib/perl/x86_64-linux-thread-multi


# install Normality package
RUN cpanm --notest -l $PERL_PATH \
    Statistics::Normality \
   
