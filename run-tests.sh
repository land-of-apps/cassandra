#!/usr/bin/env bash
set -x
for f in $(find test/unit/org/apache/cassandra/db -type f); do
  t="$(basename $f .java)"
  travis_wait ant test -Dtest.name="$t"
done