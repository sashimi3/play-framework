FROM ksdn117/oracle-jdk
MAINTAINER	ksdn117 <ksdn117@gmail.com>

ENV VERSION 1.2.12
ENV ARCHIVE typesafe-activator-${VERSION}-minimal.zip

RUN apt-get update
RUN apt-get -y install unzip
RUN wget http://downloads.typesafe.com/typesafe-activator/${VERSION}/${ARCHIVE}\
	&& unzip ${ARCHIVE}\
	&& rm -f ${ARCHIVE}\
	&& echo export PATH=\"/activator-${VERSION}-minimal:\$PATH\" >> ~/.bashrc
