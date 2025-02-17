#!/usr/bin/env bash

export _GIT_BRANCH="master"
export _GIT_LOG_OPTIONS="--ignore-all-space --ignore-blank-lines"
export _GIT_SINCE="2023-01-01"

git quick-stats $*
