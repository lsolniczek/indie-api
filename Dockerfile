FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /indiepiniata
WORKDIR /indiepiniata
ADD Gemfile /indiepiniata/Gemfile
ADD Gemfile.lock /indiepiniata/Gemfile.lock
RUN bundle install
ADD . /indiepiniata
