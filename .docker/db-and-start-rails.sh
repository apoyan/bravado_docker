#!/bin/bash
set -e

# Clean after last exit (if unsuccess)
rm -f tmp/pids/server.pid

# Try to create and migrate databases
echo "Run [rake db:create db:migrate] ..."
bundle exec rails db:create db:migrate 2>&1
echo "Run [db/seed.rb] ..."
bundle exec rails db:seed 2>&1
echo "Done!"

# Start rails server
bundle exec rails server
