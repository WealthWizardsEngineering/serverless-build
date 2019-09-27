FROM node:lts-alpine

RUN apk add python3 py3-pip \
  && pip3 install --upgrade pip \
  && pip3 install --upgrade awscli \
  && rm -rf /var/cache/apk/*

RUN npm install --global serverless

RUN mkdir /build

WORKDIR /build