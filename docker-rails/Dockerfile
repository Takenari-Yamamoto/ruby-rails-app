FROM ruby:2.7.5

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs


WORKDIR /myapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

COPY . /myapp
