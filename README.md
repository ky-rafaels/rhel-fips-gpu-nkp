# Run in non-airgap first:

1. Use the Red Hat image builder [here](https://console.redhat.com/insights/image-builder)
2. Import the blueplint provided under ./blueprints/*
3. Enable subscription manager and activation key
3. Wait until image build completes, you should then have a .qcow2 image ready for download


# Steps for airgap
4. Download and import into prism central (in this case I imported image named rhel-8.10-x86_64-fips-stig.qcow2)
5. Run nkp create image command

```bash
export ANSIBLE_REMOTE_USER=nutanix
export ANSIBLE_PASSWORD="nutanix/4u"
export PKR_VAR_remote_folder=/home/nutanix  # /tmp is not writable ensures packer and ansible can run in another dir
export PKR_VAR_cpu=8
export PKR_VAR_memory_gb=8192

nkp create image nutanix rhel-8.10 \
      --cluster PHX-POC207 \
      --endpoint 10.38.207.7 \
      --subnet vlan414 \
      --insecure \
      --artifacts-directory ./artifacts/ \
      --fips \
      --source-image rhel-8.10-x86_64-fips-stig.qcow2
```


<!-- 1. Spin up a rhel based vm you can run composer-cli from

2. Use composer-cli to build the blueprint

```bash
composer-cli blueprints push blueprints/rhel-8-fips-gpu-blueprint.json
composer-cli compose start gpu-rhel8.10 qcow2
composer-cli compose image <UUID> -->
```

