FROM python:3.8.5

RUN apt-get update && apt-get install -qq -y ruby-dev \
    libpq-dev; \
    gem install dpl

WORKDIR /workspace