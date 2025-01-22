#!/usr/bin/env bash
# exit on error
set -o errexit

# Ensure PostgreSQL is running
sudo service postgresql start

bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean

# Perform database migrations
bundle exec rails db:migrate