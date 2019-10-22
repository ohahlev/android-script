#!/bin/sh
echo 'no' | $ANDROID_HOME/tools/bin/avdmanager create avd --force --name "nexus4" --abi google_apis/x86_64 --package "system-images;android-29;google_apis;x86_64" --device "Nexus 4"

