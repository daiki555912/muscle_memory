FROM ruby:2.7
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /muscle_memory
WORKDIR /muscle_memory

COPY Gemfile /muscle_memory/Gemfile
COPY Gemfile.lock /muscle_memory/Gemfile.lock

RUN bundle install
COPY . /muscle_memory
