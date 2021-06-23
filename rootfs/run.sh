#!/bin/bash

set -ueo pipefail

echo '4de64ad74607f128bdb5873497a9d85d27e52c0a96dc994016488d050a55dd6c  /root/.netbox-scanner.conf' | sha256sum -c &> /dev/null && {
	echo "Error: You have to configure at least ADDRESS and TOKEN in 'netbox-scanner.conf'."
	echo
	exit 1
} >&2

cd /netbox-scanner
python3 netbox-scanner.py nessus
