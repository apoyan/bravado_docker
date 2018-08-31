#!/bin/bash

apt-get install cron
bundle exec whenever --update-crontab

trap "bundle exec sidekiqctl stop ${SIDEKIQ_PIDFILE}" SIGINT
bundle exec sidekiq --daemon --logfile=$SIDEKIQ_LOGFILE --pidfile=$SIDEKIQ_PIDFILE
tail -f $SIDEKIQ_LOGFILE
