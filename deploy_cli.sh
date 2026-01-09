#!/usr/bin/env sh

# Network: dvportgroup-545783, VL-0253-EIS-VSS-CGN
# Folder:  group-v17904, ITS > HIG > Services > Dev
#          group-v17903, ITS > HIG > Services > Prod

vss-cli --wait compute vm mk from-clib \
--memory 4 --cpu 2 \
--source openSUSE \
--disk 100 --firmware efi \
--description 'openSUSE Tumbleweed Test' \
--client EIS --os opensuse64Guest --usage Dev \
--folder group-v9593 --net dvportgroup-545783 \
--extra-config disk.EnableUUID=TRUE \
--user-data cloud-init/userdata.yaml \
--vss-service N/A --power-on openSUSE-test-05