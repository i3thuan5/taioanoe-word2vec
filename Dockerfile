FROM python:3.7-stretch
MAINTAINER Ithuan

WORKDIR /opt
RUN git clone https://github.com/dav/word2vec.git

WORKDIR /opt/word2vec
RUN make

RUN echo 'import word2vec' | python