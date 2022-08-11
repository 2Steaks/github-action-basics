#!/bin/bash

set -x
export XK6_HEADLESS=true
export $INPUT_TESTREGEX
export $GITHUB_WORKSPACE/$TEST_PATH_REGEX

function has_file {
    if [ ! -f "$1" ]; then
        echo "$1 does not exist."
    fi
}

has_file tests
has_file /tests
has_file $GITHUB_WORKSPACE/tests

for file in $GITHUB_WORKSPACE/$INPUT_TESTREGEX; do
    /go/xk6-browser run "$file"
done
