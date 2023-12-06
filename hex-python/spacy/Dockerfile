FROM --platform=$BUILDPLATFORM ubuntu:22.04
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade && apt-get install -y \
    git \
    build-essential \
    software-properties-common\
    python3.10-venv

WORKDIR /opt/app

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN pip3 install --upgrade pip && \
    pip3 install -U pip setuptools wheel && \
    pip3 install -U spacy

ENTRYPOINT [ "python3" ]