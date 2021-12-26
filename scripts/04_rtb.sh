#!/bin/bash

chmod 755 config.sh
source config.sh

echo "RouteTable Deploy"

aws cloudformation deploy --profile "${2}" \
--parameter-overrides Env="${1}" ProjectName="${PROJECT_NAME}" \
--template-file "templates/04_rtb.yml" \
--stack-name "${1}-${PROJECT_NAME}-rtb" \
--no-fail-on-empty-changeset