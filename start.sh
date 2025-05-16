#!/bin/bash

echo "Starting Puma..."
bundle exec puma -e production -C puma.rb &

echo "Starting Caddy..."
sudo caddy run --config Caddyfile --adapter caddyfile
