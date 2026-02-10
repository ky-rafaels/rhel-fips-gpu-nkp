./cli/nkp create image nutanix rocky-9.6 \
      --cluster DM3-NFIL009 \
      --endpoint 10.54.104.7 \
      --subnet aux1 \
      --insecure \
      --bundle ./container-images/konvoy-image-bundle-v2.16.1.tar \
      --source-image rocky-9.6-golden-image-stig.qcow2