#!/bin/sh

set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

# until bundle exec rails db:prepare; do
#   >&2 echo "Postgres is unavailable - sleeping"
#   sleep 1
# done
  
# >&2 echo "Postgres is up - executing command"

bundle exec rails db:prepare

bundle exec rails server -b 0.0.0.0