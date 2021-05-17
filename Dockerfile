FROM node:lts-alpine

RUN apk add python3 py3-pip zip gcc curl make \
  && curl https://sh.rustup.rs -sSf | sh -s -- -y \
  && apk add gcc musl-dev python3-dev libffi-dev openssl-dev \
  && pip3 install --upgrade pip \
  && pip3 install --upgrade awscli \
  && rm -rf /var/cache/apk/*

ENV PATH="/root/.cargo/bin:$PATH"

RUN npm install --global serverless

RUN mkdir /build

WORKDIR /build
