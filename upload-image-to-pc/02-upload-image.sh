#!/bin/bash

curl -X PUT \
  -k \
  -u "krafaels:<pc-password>" \
  --header "Content-Type: application/octet-stream" \
  --upload-file output/rocky-9.6-qcow2-x86_64/rocky-9.6-qcow2-x86_64.qcow2 \
  https://10.54.104.7:9440/api/nutanix/v3/images/ca8050da-f90b-4ffb-873f-208f7ae74287/file