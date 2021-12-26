#!/bin/bash

chmod 755 config.sh
source config.sh

echo "Subnet Deploy"

aws cloudformation deploy --profile "${2}" \
--parameter-overrides Env="${1}" ProjectName="${PROJECT_NAME}" \
--template-file "templates/03_subnet.yml" \
--stack-name "${1}-${PROJECT_NAME}-subnet" \
--no-fail-on-empty-changeset