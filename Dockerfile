FROM node:alpine

RUN apk add --no-cache \
      build-base \
      openssl-dev \
      curl \
      g++ \
      git \
      file \
      binutils \
      libssl1.0 \
      pkgconfig \
      openssl \
      bash

ADD . /ieo-smart-contracts

WORKDIR /ieo-smart-contracts

RUN npm install -g truffle

RUN npm install

RUN ./node_modules/.bin/truffle test
