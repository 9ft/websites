FROM alpine
MAINTAINER Mindy Cong <mindycong@gmail.com>
FROM nginx:alpine
FROM node:alpine
RUN npm install -g --unsafe hexo-cli
FROM ruby:alpine
#RUN apk add --update build-base && \
RUN apk --no-cache add build-base && \
    rm -rf /var/cache/apk/*       && \
    gem install jekyll bundler    && \
    apk del build-base
RUN jekyll --version
RUN whereis nginx
