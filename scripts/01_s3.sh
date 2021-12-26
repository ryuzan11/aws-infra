#!/bin/bash

chmod 755 config.sh
source config.sh

echo "S3 Deploy"

aws cloudformation deploy --profile "${2}" \
--parameter-overrides Env="${1}" ProjectName="${PROJECT_NAME}" \
--template-file "templates/01_s3.yml" \
--stack-name "${1}-${PROJECT_NAME}-s3" \
--no-fail-on-empty-changeset