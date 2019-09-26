FROM node:lts-alpine

RUN npm install --global serverless

RUN mkdir /build

WORKDIR /build