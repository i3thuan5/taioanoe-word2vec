FROM python:3.7-stretch
MAINTAINER Ithuan


WORKDIR /opt
RUN pip install gensim

ARG BUN=bun.txt.gz

COPY ${BUN} bun.txt.gz
RUN gzip -d bun.txt.gz

COPY hunlian.py .
RUN python hunlian.py

COPY tshue.py .
CMD python tshue.py 逐-家｜tak8-ke1