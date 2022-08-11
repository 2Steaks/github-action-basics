#!/bin/bash

set -x
XK6_HEADLESS=true
XK6_BROWSER=/go/xk6-browser
TEST_FILES=find $GITHUB_WORKSPACE/$INPUT_TESTREGEX

echo $GITHUB_WORKSPACE/$INPUT_TESTREGEX

echo $TEST_FILES

for file in $TEST_FILES; do
    $XK6_BROWSER run "$file"
done
