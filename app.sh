#!/bin/sh
cd /app
# TODO(mtwilliams): Pre-install dependencies during build?
# TODO(mtwilliams): Handle production by install Postgres.
bundle install --without production
exec bundle exec rackup -o 0.0.0.0 -p 80 -P /var/run/app.pid >>/var/log/app.log 2>&1
