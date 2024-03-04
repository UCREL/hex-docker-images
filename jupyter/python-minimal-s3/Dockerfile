FROM --platform=$BUILDPLATFORM ubuntu:22.04
ENV DEBIAN_FRONTEND noninteractive

USER root

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    python3.11 \
    python3-pip \
    python3.11-venv \
    build-essential \
    python3-dev \
    curl \
    wget \
    git \
    vim \
    nano-tiny \
    unzip \
    s3fs && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip3 install \
    'jupyterhub==4.*' \
    'notebook==7.*'

COPY src/ /opt/launch
RUN chmod +x /opt/launch/launch.sh && chmod +x /opt/launch/conf.d/*
ENV PATH="${PATH}:/opt/launch/"

# create a user, since we don't want to run as root
RUN useradd -m jovyan
ENV HOME=/home/jovyan
WORKDIR $HOME
USER jovyan

CMD ["launch.sh"]
