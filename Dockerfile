FROM ruby:2.6-alpine3.10

RUN apk add --no-cache git curl; gem install dpl dpl-heroku