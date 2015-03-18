FROM dockerfile/java:oracle-java8

MAINTAINER Jerry Preissler, jerry@codeshards.org

COPY downloads/typesafe-activator-*.zip /tmp/

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y unzip git

RUN adduser --disabled-password --gecos "" develop

RUN \
  cd /opt && unzip /tmp/*.zip && \
  chmod ugo+x $(ls -d -1 $PWD/**)/activator && \
  ln -s /opt/activator-* /opt/activator && \
  echo "export PATH=$PATH:/opt/activator" >> /etc/profile

COPY start.sh /opt/

run chmod ugo+x /opt/start.sh

# RUN \
#  chown -R develop:develop /home/develop/*

VOLUME ["/home/develop"]

EXPOSE 9000

ENTRYPOINT ["/opt/start.sh"]