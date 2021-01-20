FROM python:3.8-slim AS base
RUN apt-get update; \ 
    # Update apt-get cache
   pip -q install pipenv

WORKDIR /workspace
CMD ["/bin/bash"]

