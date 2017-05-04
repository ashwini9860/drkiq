# Use the barebones version of Ruby 2.2.3.
FROM ruby:2.2.3-slim

RUN apt-get update && apt-get install -qq -y build-essential nodejs libpq-dev nginx supervisor  postgresql-client-9.4 openjdk-7-jdk --fix-missing --no-install-recommends

ENV INSTALL_PATH /drkiq
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY nginx.conf /etc/nginx/sites-available/default
COPY Gemfile Gemfile
RUN bundle install
COPY nginx-super.conf /etc/supervisor/conf.d/nginx.conf
COPY unicorn-super.conf /etc/supervisor/conf.d/unicorn.conf
COPY . .

RUN bundle exec rake RAILS_ENV=production DATABASE_URL=postgresql://user:pass@127.0.0.1/dbname SECRET_TOKEN=pickasecuretoken assets:precompile

VOLUME ["$INSTALL_PATH/public"]

CMD /usr/bin/supervisord -n

