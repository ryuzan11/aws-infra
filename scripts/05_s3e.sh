#!/bin/bash

chmod 755 config.sh
source config.sh

echo "VPC S3 Endpoint Deploy"

aws cloudformation deploy --profile "${2}" \
--parameter-overrides Env="${1}" ProjectName="${PROJECT_NAME}" \
--template-file "templates/05_s3e.yml" \
--stack-name "${1}-${PROJECT_NAME}-s3e" \
--no-fail-on-empty-changeset