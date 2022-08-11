#!/bin/bash

set -x
export XK6_HEADLESS=true
export XK6_BROWSER=/go/xk6-browser

for file in $GITHUB_WORKSPACE/$INPUT_TESTREGEX; do
    $XK6_BROWSER run "$file"
done
