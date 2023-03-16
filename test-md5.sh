#!/usr/bin/bash

file="/var/lib/jenkins/workspace/http-test-01/index.html"

online_md5="$(curl -sL http://10.4.1.14:9889 | md5sum | cut -d ' ' -f 1)"
local_md5="$(md5sum "${file}" | cut -d ' ' -f 1)"

if [ "$online_md5" != "$local_md5" ]; then
    exit 1
fi
