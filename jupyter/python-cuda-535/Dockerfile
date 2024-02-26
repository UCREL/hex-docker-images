FROM --platform=$BUILDPLATFORM nvidia/cuda:12.3.1-runtime-ubuntu22.04
ENV DEBIAN_FRONTEND noninteractive

USER root

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    python3.10-venv \
    build-essential \
    python3-dev \
    curl \
    git \
    vim \
    nano-tiny \
    tzdata \
    unzip \
    vim-tiny \
    openssh-client \
    less \
    texlive-xetex \
    texlive-fonts-recommended \
    texlive-plain-generic \
    xclip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN update-alternatives --install /usr/bin/nano nano /bin/nano-tiny 10

RUN useradd -ms /bin/bash jovyan
ENV HOME=/home/jovyan
WORKDIR $HOME
USER jovyan

ENV VIRTUAL_ENV=/home/jovyan/.venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN pip3 install \
    'jupyterhub==4.*' \
    'notebook==7.*'

CMD ["jupyterhub-singleuser"]