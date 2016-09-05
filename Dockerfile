FROM debian:jessie

RUN apt-get update
RUN apt-get install git
RUN git clone https://gitlab.com/xonotic/xonotic.git
RUN mkdir -p ~/.xonotic/data
RUN cp xonotic/server/server.cfg ~/.xonotic/data/server.cfg
