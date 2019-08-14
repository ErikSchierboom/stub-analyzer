FROM ruby:2.5-alpine

RUN apk update && apk upgrade && apk add --no-cache bash

RUN mkdir /opt/analyzer
COPY . /opt/analyzer
WORKDIR /opt/analyzer
