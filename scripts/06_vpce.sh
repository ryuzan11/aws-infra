#!/bin/bash

chmod 755 config.sh
source config.sh

echo "VPC Endpoint Deploy"

aws cloudformation deploy --profile "${2}" \
--parameter-overrides Env="${1}" ProjectName="${PROJECT_NAME}" \
--template-file "templates/06_vpce.yml" \
--stack-name "${1}-${PROJECT_NAME}-vpce" \
--no-fail-on-empty-changeset