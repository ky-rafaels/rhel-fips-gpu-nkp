# Run in non-airgap first:

1. Use the Red Hat image builder [here](https://console.redhat.com/insights/image-builder)
2. Import the blueplint provided under ./blueprints/*
3. Enable subscription manager and activation key
3. Wait until image build completes, you should then have a .qcow2 image ready for download


# Run composer-cli in a container to build node images


4. Download and import into prism central (in this case I imported image named rhel-8.10-x86_64-fips-stig.qcow2)
5. Boot VM from image and remount /tmp to make writable
```bash
sudo mount -o remount,exec /tmp

vim /etc/fstab
# change line 
UUID-asgargarg45334-...  /tmp xfs defaults,nodev,exec,nodev  0      0
```
5. Poweroff VM
6. Reimage VM
5. Run nkp create image command

```bash
# export PKR_VAR_remote_folder=/home/nutanix  # /tmp is not writable ensures packer and ansible can run in another dir
export NUTANIX_USER=admin
export NUTANIX_PASSWORD=xxxxxxxxx
# export PKR_VAR_cpu=8
# export PKR_VAR_memory_gb=8192

nkp create image nutanix rhel-8.10 \
      --cluster PHX-POC207 \
      --endpoint 10.38.207.7 \
      --subnet vlan414 \
      --insecure \
      --artifacts-directory ./artifacts/ \
      --fips \
      --source-image rhel-8.10-x86_64-fips-stig.qcow2 \
      --overrides user-override.yaml
```
