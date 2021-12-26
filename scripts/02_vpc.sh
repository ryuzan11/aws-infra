#!/bin/bash

chmod 755 config.sh
source config.sh

echo "VPC Deploy"

aws cloudformation deploy --profile "${2}" \
--parameter-overrides Env="${1}" ProjectName="${PROJECT_NAME}" \
--template-file "templates/02_vpc.yml" \
--stack-name "${1}-${PROJECT_NAME}-vpc" \
--no-fail-on-empty-changeset