#! /bin/bash

CHECK=$(/usr/local/wait-for-it.sh localhost:5005)

# checks wait_for_it successfully exited
if [[ "$CHECK" -eq 0 ]]; then
  echo "Healthy"
  exit 0
else
  exit 1
fi
