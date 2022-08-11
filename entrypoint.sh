#!/bin/bash

set -x
export XK6_HEADLESS=true
export XK6_PATH=/go/xk6-browser

for f in tests/*.js; do
    $XK6_PATH run "$f"
done
