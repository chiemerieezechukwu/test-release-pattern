#!/bin/bash

echo "Pre-release script"
echo "New release version: $1"

yq '.name = "Testing"' .github/workflows/release.yml > test.yml

git add -u

git commit -m "Commit message from workflow"

git push https://chiemerieezechukwu:${GITHUB_TOKEN}@github.com/chiemerieezechukwu/test-release-pattern
