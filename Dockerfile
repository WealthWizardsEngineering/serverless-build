FROM node:lts-alpine

RUN apk add --update aws-cli --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing \
  && rm -rf /var/cache/apk/*

RUN npm install --global serverless

RUN mkdir /build

WORKDIR /build