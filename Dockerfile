FROM node:10.11.0

RUN mkdir /usr/src/benchmark

COPY . /usr/src/benchmark

CMD /bin/bash
