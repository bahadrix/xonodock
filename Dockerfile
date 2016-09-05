FROM debian:jessie

ARG XONOTICVERSION

RUN apt-get update
RUN apt-get install -y wget unzip
EXPOSE 26000
WORKDIR /opt
RUN wget http://dl.xonotic.org/xonotic-${XONOTICVERSION}.zip
RUN unzip xonotic-${XONOTICVERSION}.zip
RUN rm -rf xonotic-${XONOTICVERSION}.zip
ENTRYPOINT /bin/bash /opt/Xonotic/xonotic-linux-dedicated.sh
#RUN /bin/bash server_linux.sh
