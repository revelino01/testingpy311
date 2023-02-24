FROM python:3.11.2-alpine

COPY . /py11testing
WORKDIR /py11testing

RUN python -m ensurepip --upgrade
RUN pip install -r requirement.txt
CMD python main.py