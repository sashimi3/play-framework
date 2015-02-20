FROM ubuntu:latest
MAINTAINER	ksdn117 <ksdn117@gmail.com>

# RUN export DEBIAN_FRONTEND=noninteractive
#ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y software-properties-common python-software-properties
#RUN add-apt-repository -y ppa:webupd8team/java
#RUN apt-get update
#RUN yes | apt-get install -y oracle-java8-installer

RUN DEBIAN_FRONTEND=noninteractive add-apt-repository -y ppa:webupd8team/java \
  && apt-get -y update \
  && yes | apt-get install oracle-java8-installer
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tomcat7
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
