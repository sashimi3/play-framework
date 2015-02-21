FROM ksdn117/oracle-jdk
MAINTAINER	ksdn117 <ksdn117@gmail.com>

RUN apt-get update
RUN apt-get install -y typesafe-activator
