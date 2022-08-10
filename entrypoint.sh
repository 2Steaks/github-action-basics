#!/bin/bash

set -x
export XK6_HEADLESS=true
export TEST_PATH_REGEX=${1}

for f in $TEST_PATH_REGEX; do
    ./app/xk6-browser run "$f"
done
