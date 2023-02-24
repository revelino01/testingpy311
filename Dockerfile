# base image
FROM python:3.11.2-alpine

#set maintainer
LABEL maintainer "revelino.adli@gmail.com"

COPY . /py11testing
WORKDIR /py11testing

RUN python -m ensurepip --upgrade
RUN pip install -r requirement.txt
CMD python main.py