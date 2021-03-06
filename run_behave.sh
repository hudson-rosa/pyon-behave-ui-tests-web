#!/bin/bash
#chmod +x behave_runner.py

PYON_ENVIRONMENT='staging'
PYON_EXCLUDED_TAG='wip'

# WEB - OFFICIAL ENVIRONMENT SETTINGS
PYON_TARGET='local'
PYON_MODE='web'

PYON_OS='MacOS Catalina'
PYON_OS_VERSION=
PYON_DEVICE='local'
PYON_BROWSER='chrome'
PYON_BROWSER_VERSION='90.0'

PYON_ORIENTATION='Portrait'
PYON_RESOLUTION='1280x1024'

PYON_TAGS='demo-web-apw'

# echo 'COPYING PROPERTIES'
# cp env_settings.properties.local env_settings.properties
# echo 'UPDATING PACKAGES...'
# python update.py
python behave_runner.py --target $PYON_TARGET \
                        --environment "$PYON_ENVIRONMENT" \
                        --mode $PYON_MODE \
                        --os "$PYON_OS" \
                        --os_version "$PYON_OS_VERSION" \
                        --device_name "$PYON_DEVICE" \
                        --browser $PYON_BROWSER \
                        --browser_version "$PYON_BROWSER_VERSION" \
                        --orientation "$PYON_ORIENTATION" \
                        --resolution "$PYON_RESOLUTION" \
                        --tags "$PYON_TAGS" \
                        --exclude "$PYON_EXCLUDED_TAG"
