#!/bin/bash

echo "Pre-release script"
echo "New release version: $1"

yq '.name = "Testing"' .github/workflows/release.yml > test
