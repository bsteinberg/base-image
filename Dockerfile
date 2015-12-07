FROM debian:8

#----------------------------------------------------------#
# Install system packages                                  #
#----------------------------------------------------------#

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y \
        build-essential \
        curl \
        git \
        nginx \
        python2.7 \
        python2.7-dev \
        python-ldap \
        python-setuptools \
        supervisor \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
