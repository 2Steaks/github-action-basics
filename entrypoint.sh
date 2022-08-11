#!/bin/bash

set -x
export XK6_HEADLESS=true
export XK6_PATH=/go/xk6-browser

function has_directory {
    if [ ! -d "$1" ]; then
        echo "$1 does not exist."
    fi
}

has_directory tests
has_directory /tests
has_directory /github/workspace/tests
has_directory $GITHUB_WORKSPACE/tests
has_directory /$GITHUB_WORKSPACE/tests

for file in $GITHUB_WORKSPACE/$INPUT_TESTREGEX; do
    $XK6_PATH run "$file"
done
