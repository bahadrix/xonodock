FROM debian:jessie

RUN apt-get update
RUN apt-get install -y wget unzip
EXPOSE 26000
WORKDIR /opt
RUN wget http://dl.xonotic.org/xonotic-0.8.1.zip
RUN unzip xonotic-0.8.1.zip
RUN rm -rf xonotic-0.8.1.zip
ENTRYPOINT /bin/bash /opt/Xonotic/xonotic-linux-dedicated.sh
#RUN /bin/bash server_linux.sh
