#!/bin/bash
set -x

echo "Pre-release script"
echo "New release version: $1"

sed -i "s/VERSION=.*/VERSION=$1/" version.txt

git add -u

git commit -m "Commit message from workflow"

git push https://chiemerieezechukwu:${GITHUB_TOKEN}@github.com/chiemerieezechukwu/test-release-pattern
