FROM ubuntu:14.04

RUN apt-get -y update && apt-get install -y \
    python \
    python-dev \
    python-pip


RUN mkdir /tutorial

WORKDIR /tutorial
ADD . /tutorial

RUN pip install -r requirements.txt

EXPOSE 8000

CMD python manage.py runserver 0.0.0.0:8000
