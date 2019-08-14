FROM ruby:2.5-alpine

RUN mkdir /opt/analyzer
COPY . /opt/analyzer
WORKDIR /opt/analyzer
