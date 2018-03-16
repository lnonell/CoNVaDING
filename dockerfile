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
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
CMD [ "perl", "./your-daemon-or-script.pl" ]

#P
