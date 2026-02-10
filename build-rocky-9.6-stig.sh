#!/bin/bash

docker run --rm --privileged \
  -v $(pwd)/blueprints:/blueprints:z \
  -v $(pwd)/output:/output:z \
  ghcr.io/osbuild/image-builder-cli:latest \
  build \
    --distro rocky-9.6 --blueprint /blueprints/rocky/rocky-9-stig.json \
    qcow2