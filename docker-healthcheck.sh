#!/usr/bin/env sh

set -x

healthcheck_server () {
  echo stats \
    | echo quit \
    | curl --data-ascii - telnet://0.0.0.0:11211 \
    || exit 1
}

healthcheck_server
