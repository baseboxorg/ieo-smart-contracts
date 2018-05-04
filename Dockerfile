FROM node:8-alpine

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
      openssl

ADD . /ieo-smart-contracts

WORKDIR /ieo-smart-contracts

#RUN npm install -g truffle@4.0.1
#RUN npm install bignumber.js
RUN npm install
