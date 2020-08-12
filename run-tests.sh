#!/usr/bin/env bash
set -x
for f in $(find test/unit/org/apache/cassandra/db -type f | grep -v -e KeyCacheTest); do
  t="$(basename $f .java)"
  ant test -Dtest.name="$t"
done