FROM --platform=$BUILDPLATFORM nvidia/cuda:12.3.1-runtime-ubuntu22.04
ENV DEBIAN_FRONTEND noninteractive

USER root

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    git \
    vim \
    build-essential \
    software-properties-common\
    python3.10-venv

RUN useradd -ms /bin/bash jovyan
USER jovyan
WORKDIR /home/jovyan/work

ENV VIRTUAL_ENV=/home/jovyan/.venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN pip3 install --upgrade pip && \
    pip3 install -U pip setuptools wheel JPype1 jupyter pandas numpy seaborn scipy matplotlib pyNetLogo SALib && \
    pip3 install -U 'spacy[cuda11x]'

EXPOSE 8888                                           
ENTRYPOINT ["jupyter", "notebook","--allow-root","--ip=0.0.0.0","--port=8888","--no-browser"]