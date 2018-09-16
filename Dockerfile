FROM ubuntu:18.04

LABEL description="Docker image for practice tasks in the course 'Introduction to Machine Learning'"
MAINTAINER Taras Lehinevych <info@taraslehinevych.me>

# Supress warnings about missing front-end.
# As recommended at: # http://stackoverflow.com/questions/22466255/is-it-possibe-to-answer-dialog-questions-when-installing-under-docker
ARG DEBIAN_FRONTEND=noninteractive
# Essentials: developer tools, build tools, OpenBLAS
RUN apt-get update && apt-get install -y --no-install-recommends \
    apt-utils git curl vim unzip openssh-client wget \
    build-essential cmake build-essential \
    libopenblas-dev python3-pip python3-dev python3-setuptools && \
    pip3 install --upgrade pip

RUN pip3 install --upgrade pip

WORKDIR /app
COPY ./requirements.txt /app/requirements.txt

RUN pip3 install -r requirements.txt

EXPOSE 8888
EXPOSE 6006

RUN jupyter notebook --generate-config

COPY ./jupyter-notebook-config.py /root/.jupyter/jupyter_notebook_config.py

ENV PASSWORD naukma

CMD ["jupyter", "notebook", "--allow-root"]
