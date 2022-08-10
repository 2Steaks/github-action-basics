#!/bin/bash

set -x
export XK6_HEADLESS=true

for f in $($inputs.testPathRegex); do
    ./xk6-browser run "$f"
done
