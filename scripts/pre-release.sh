#!/bin/bash

echo "Pre-release script"
echo "New release version: $1"

yq '.name = "Testing"' .github/workflows/release.yml > test.yml

git add .

git commit -m "Commit message from workflow"

git push
