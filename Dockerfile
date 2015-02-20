FROM ubuntu:latest
MAINTAINER	ksdn117 <ksdn117@gmail.com>

RUN apt-get update
RUN apt-get install -y software-properties-common python-software-properties

RUN DEBIAN_FRONTEND=noninteractivei \
    && add-apt-repository -y ppa:webupd8team/java \
    && apt-get -y update \
    && yes | apt-get install oracle-java8-installer
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
