#!/usr/bin/env bash

_CURR_DIR="$( cd "$(dirname "$0")" || return ; pwd -P )"

rm -rf "$_CURR_DIR/gh-pages" "$_CURR_DIR/.cache"

docker run -v "${_CURR_DIR}:/antora" --rm -t antora/antora:2.3.3 --pull --stacktrace site.yml