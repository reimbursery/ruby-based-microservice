#!/bin/sh
cd /app
# TODO(mtwilliams): Handle production by install Postgres.
bundle install --without production
exec bundle exec rackup -p 80 -P /var/run/app.pid >>/var/log/app.log 2>&1
