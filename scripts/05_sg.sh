#!/bin/bash

chmod 755 config.sh
source config.sh

echo "Security Group Deploy"

aws cloudformation deploy --profile "${2}" \
--parameter-overrides Env="${1}" ProjectName="${PROJECT_NAME}" \
--template-file "templates/05_sg.yml" \
--stack-name "${1}-${PROJECT_NAME}-sg" \
--no-fail-on-empty-changeset