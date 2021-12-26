#!/bin/bash

sh scripts/01_s3.sh "${1}" "${2}"
sh scripts/02_vpc.sh "${1}" "${2}"
sh scripts/03_subnet.sh "${1}" "${2}"
sh scripts/04_rtb.sh "${1}" "${2}"
sh scripts/05_s3e.sh "${1}" "${2}"