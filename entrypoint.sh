#!/bin/bash

set -x
export XK6_HEADLESS=true
export TEST_PATH_REGEX=${1}
export $GITHUB_WORKSPACE/$TEST_PATH_REGEX

for file in $GITHUB_WORKSPACE/$TEST_PATH_REGEX; do
    ./xk6-browser run "$file"
done
