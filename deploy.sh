#!/bin/bash
set -e
set -o pipefail

echo "On branch ${GITHUB_REF}, deploying..."

(
cd /usr/src
make aws-apply TERRAFORM_FLAGS=-auto-approve
)
