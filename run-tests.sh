#!/usr/bin/env bash
set -x
for f in $(find test/unit -type f | head -2); do
  t="$(basename $f .java)"
  echo ant -Duse.jdk11=true test -Dtest.name="$t"
  ant -Duse.jdk11=true test -Dtest.name="$t"
done