FROM --platform=$BUILDPLATFORM quay.io/jupyter/minimal-notebook:latest
ENV DEBIAN_FRONTEND noninteractive

USER root

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    git \
    build-essential \
    libnvidia-compute-535 \
    software-properties-common\
    python3.10-venv

USER jovyan
WORKDIR /home/jovyan/work

ENV VIRTUAL_ENV=/home/jovyan/.venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN pip3 install --upgrade pip && \
    pip3 install -U pip setuptools wheel && \
    pip3 install -U 'spacy[cuda11x]'