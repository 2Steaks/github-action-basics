#!/bin/bash

set -x
XK6_HEADLESS=true
XK6_BROWSER=/go/xk6-browser

for file in find $GITHUB_WORKSPACE/$INPUT_TESTREGEX; do
    $XK6_BROWSER run "$file"
done
