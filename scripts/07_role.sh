#!/bin/bash

chmod 755 config.sh
source config.sh

echo "IAM Role Deploy"

aws cloudformation deploy --profile "${2}" \
--parameter-overrides Env="${1}" ProjectName="${PROJECT_NAME}" \
--template-file "templates/07_role.yml" \
--stack-name "${1}-${PROJECT_NAME}-role" \
--capabilities CAPABILITY_IAM \
--no-fail-on-empty-changeset