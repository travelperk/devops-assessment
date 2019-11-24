FROM python:slim

COPY . /app
WORKDIR /app

RUN python setup.py install

ENV FLASK_APP=hello

EXPOSE 5000
ENTRYPOINT ["flask", "run"]