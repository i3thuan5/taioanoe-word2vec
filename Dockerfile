FROM python:3.7-stretch

RUN apt-get update && apt-get install -y svn

WORKDIR /opt
RUN svn checkout http://word2vec.googlecode.com/svn/trunk/
