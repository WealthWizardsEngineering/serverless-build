FROM python:3.8-slim

RUN apt-get update \
  && apt-get install -y curl zip \
  && curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - \
  && apt-get install -y nodejs \
  && pip3 install --upgrade awscli \
  && apt-get clean

RUN npm install --global serverless@2.x.x yarn

RUN mkdir /build


COPY gitconfig /etc/gitconfig

WORKDIR /build
