#!/bin/bash

echo "Pre-release script"
echo "New release version: $1"

yq '.name' < .github/workflows/release.yml
