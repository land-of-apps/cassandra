#!/usr/bin/env bash
set -x
for f in $(find test/unit -type f | head -2); do
  t="$(basename $f .java)"
  echo ant test -Dtest.name="$t"
  ant test -Dtest.name="$t"
done