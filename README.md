# 1. Create an image with necessary partitions from .iso server

1. Use the Red Hat image builder [here](https://console.redhat.com/insights/image-builder)
2. Create a custom repository [here](https://console.redhat.com/insights/content/repositories)

`nvidia-developer-repo: https://developer.download.nvidia.com/compute/cuda/repos/rhel8/x86_64/`

2. Import the blueplint provided under ./blueprints/*
3. Enable subscription manager and activation key
3. Wait until image build completes, you should then have a .qcow2 image ready for download
4. Download and import into prism central
5. Boot image 

<!-- 1. Spin up a rhel based vm you can run composer-cli from

2. Use composer-cli to build the blueprint

```bash
composer-cli blueprints push blueprints/rhel-8-fips-gpu-blueprint.json
composer-cli compose start gpu-rhel8.10 qcow2
composer-cli compose image <UUID> -->
```

