FROM debian:10

MAINTAINER Hau Bui <buichihau98@gmail.com>

USER root

RUN apt-get update && \
    apt-get install -y build-essential && \
    apt-get install -y libboost-all-dev && \
    apt-get install -y libssl-dev && \
    apt-get install -y g++ && \
    apt-get install -y make && \
    apt-get install -y git

RUN cd /opt && git clone https://github.com/jselbie/stunserver.git && cd stunserver && make

COPY ./run.sh /usr/bin/run.sh

RUN chmod -R 777 /usr/bin/run.sh

RUN sed -i -e 's/\r$//' /usr/bin/run.sh

ENTRYPOINT ["/usr/bin/run.sh"]
