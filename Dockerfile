FROM ubuntu:16.04


RUN apt-get update && apt-get install -y \
  build-essential \
  git \
  pkg-config \
  python-dev \
  python-pip \
  python-virtualenv \
  libhdf5-dev \
  libopencv-dev \
  libyaml-dev && \
  cd /root/ && \
  git clone https://github.com/NervanaSystems/neon.git && \
  cd neon/ && \
  make sysinstall && \
  python setup.py install