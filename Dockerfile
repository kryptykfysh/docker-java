# Latest Ubuntu build, with Java installed.

FROM ubuntu:wily
MAINTAINER Kryptyk Fysh <kryptykfysh@kryptykfysh.co.uk>

ENV DEBIAN_FRONTEND noninteractive

# Update packages and install java
RUN \
  apt-get update \
  && apt-get -y install openjdk-8-jdk \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Set Java related variables
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV JRE_HOME /usr/lib/jvm/java-8-openjdk-amd64/jre

# Set default command
CMD ["bash"]
