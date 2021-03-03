# Base build
FROM python:3.8-slim AS base
RUN apt-get update; \ 
    # Update apt-get cache
   pip -q install pipenv
WORKDIR /workspace
RUN mkdir .venv
COPY Pipfile Pipfile.lock /workspace
CMD ["/bin/bash"]

FROM base as base_build
RUN pipenv sync
CMD ["/bin/bash"]

FROM base as dev_build
RUN pipenv sync --dev
CMD ["/bin/bash"]

FROM dev_build as dev
RUN apt-get -qq install vim -y
CMD ["/bin/bash"]

