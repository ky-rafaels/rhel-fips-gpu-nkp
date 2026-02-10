#!/bin/bash

curl -X POST \
  -k \
  -u "krafaels:<pc-password>" \
  -H "Content-Type: application/json" \
  https://10.54.104.7:9440/api/nutanix/v3/images \
  -d '{
    "spec": {
      "name": "nkp-rocky-9.6-release-stig-1.34.1.qcow2",
      "description": "Rocky 9 STIG FIPS qcow2",
      "resources": {
        "image_type": "DISK_IMAGE"
      }
    },
    "metadata": {
      "kind": "image"
    }
  }'