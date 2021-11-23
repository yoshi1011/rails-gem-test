FROM ruby:3.0.2

ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

RUN mkdir /app
WORKDIR /app

RUN apt-get update -qq && \
    apt-get install -y sudo git build-essential libpq-dev postgresql-client

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt install -y nodejs

RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install yarn

RUN gem install bundler

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle install

COPY package.json package.json
COPY yarn.lock yarn.lock

RUN yarn install



