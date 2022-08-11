#!/bin/bash

shopt -s globstar

set -x
XK6_HEADLESS=true
XK6_BROWSER=/go/xk6-browser

for file in $INPUT_INCLUDE; do
    $XK6_BROWSER run "$file"
done
