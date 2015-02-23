FROM ksdn117/oracle-jdk
MAINTAINER	ksdn117 <ksdn117@gmail.com>

RUN apt-get update
RUN apt-get -y install unzip
RUN ver='1.2.12'\
	&& archive="typesafe-activator-${ver}-minimal.zip"\
	&& wget http://downloads.typesafe.com/typesafe-activator/${ver}/${archive}\
	&& unzip ${archive}\
	&& rm -f ${archive}\
	&& echo export PATH=\"/activator-${ver}-minimal:\$PATH\" >> ~/.bashrc
