#!/bin/bash

set -x
export XK6_HEADLESS=true
export XK6_PATH=/go/xk6-browser

for file in tests/*.js; do
    $XK6_PATH run "$file"
done
