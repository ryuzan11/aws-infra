#!/bin/bash

sh scripts/01_s3.sh "${1}" "${2}"
sh scripts/02_vpc.sh "${1}" "${2}"
sh scripts/03_subnet.sh "${1}" "${2}"
sh scripts/04_rtb.sh "${1}" "${2}"
sh scripts/05_sg.sh "${1}" "${2}"
sh scripts/06_vpce.sh "${1}" "${2}"
sh scripts/07_role.sh "${1}" "${2}"