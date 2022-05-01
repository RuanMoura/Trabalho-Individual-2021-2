FROM ruby:3.0.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

ENV BUNDLER_VERSION=2.2.3

WORKDIR /aplicacao

COPY Gemfile /aplicacao/Gemfile

COPY Gemfile.lock /aplicacao/Gemfile.lock

RUN gem install bundler -v 2.2.3

RUN bundle install

COPY ./ /aplicacao

EXPOSE 3000

ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]
