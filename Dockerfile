FROM ruby:2.7.2-alpine3.12

ENV RACK_ENV development
ENV NODE_ENV development
ENV RAILS_ENV development

RUN apk update && apk upgrade && apk add curl

RUN apk add --no-cache \
  bash git curl openssh build-base tzdata ca-certificates \
  postgresql-dev=12.7-r0 postgresql-client=12.7-r0 \
  && rm -rf /tmp/* && rm -rf /var/cache/apk/*

RUN mkdir /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install
