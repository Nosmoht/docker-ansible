FROM python:2.7.15-alpine3.8

RUN apk add --no-cache gcc make libtool linux-headers musl-dev libffi-dev openssl-dev git openssh rsync sshpass

ENV ANSIBLE_VERSION 2.7.5

ADD requirements.txt /tmp/requirements.txt
RUN pip --no-cache-dir install ansible==${ANSIBLE_VERSION}
RUN pip --no-cache-dir install -r /tmp/requirements.txt
RUN ln -s /usr/local/bin/python /usr/bin/python

WORKDIR /ansible
