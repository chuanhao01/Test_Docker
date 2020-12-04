FROM python:3.8.5

RUN apt-get update && apt-get install -qq -y ruby-dev \
    postgresql-server-dev-all; \
    gem install dpl; \

WORKDIR /workspace