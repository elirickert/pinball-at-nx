#!/bin/bash

# Start Xvfb in the background
Xvfb :99 -screen 0 1024x768x16 &

# Set DISPLAY environment variable
export DISPLAY=:99

# Execute any additional commands passed to the container
exec "$@"
