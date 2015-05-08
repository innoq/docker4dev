FROM java:7

MAINTAINER Jerry Preissler, jerry@codeshards.org

COPY downloads/typesafe-activator-*.zip /tmp/

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y unzip git

RUN adduser --disabled-password --gecos "" develop

RUN mkdir /var/project && \
	chown develop:develop /var/project

RUN \
  cd /opt && unzip /tmp/*.zip && \
  chmod ugo+x $(ls -d -1 $PWD/**)/activator && \
  ln -s /opt/activator-* /opt/activator && \
  echo "export PATH=$PATH:/opt/activator" >> /etc/profile

COPY resources/start-activator.sh /opt/

run chmod ugo+x /opt/start-activator.sh

VOLUME ["/var/project"]
VOLUME ["/home/develop"]

EXPOSE 9000

ENTRYPOINT ["/opt/start-activator.sh"]
