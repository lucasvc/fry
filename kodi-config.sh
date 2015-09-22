#!/bin/bash

sudo update-rc.d kodi defaults
# o hacer sed's
echo > /etc/default/kodi <<EOF
# Set this to 1 to enable startup
ENABLED=1

# The user to run Kodi as
USER=pi

# Adjust niceness of Kodi (decrease for higher priority)
NICE=-5
EOF
