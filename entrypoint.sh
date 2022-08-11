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

has_file $HOME/xk6-browser
has_file $GITHUB_WORKSPACE/xk6-browser
has_file $GITHUB_PATH/xk6-browser

for file in $INPUT_TESTREGEX; do
    ./xk6-browser run "$GITHUB_WORKSPACE/$file"
done
