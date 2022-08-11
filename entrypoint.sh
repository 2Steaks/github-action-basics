#!/bin/bash

set -x
export XK6_HEADLESS=true
export TEST_PATH_REGEX=${1}
export $GITHUB_WORKSPACE

for f in $TEST_PATH_REGEX; do
    $GITHUB_WORKSPACE/xk6-browser run "$f"
done
