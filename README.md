# 1. Create an image with necessary partitions from .iso server

<!-- 1. Use the Red Hat image builder [here](https://console.redhat.com/insights/image-builder) -->

1. Use composer-cli to build the blueprint

```bash
composer-cli blueprints push blueprints/rhel-8-fips-gpu-blueprint.json
composer-cli compose start gpu-rhel8.10 qcow2
composer-cli compose image <UUID>


