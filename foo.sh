
#! /bin/bash

 apt-get install -y software-properties-common && \
        add-apt-repository -y ppa:webupd8team/java && \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
        apt-get update && \
        apt-get install -y wget zip unzip oracle-java8-installer tar graphviz