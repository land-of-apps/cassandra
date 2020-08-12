#!/usr/bin/env bash
set -x
for f in $(find test/unit -type f); do
  t="$(basename $f .java)"
  ant test -Dtest.name="$t"
done