#!/bin/bash
openstack  overcloud deploy --templates \
--timeout 80 --ntp-server 0.pool.ntp.org \
--stack overcloud \
-e /home/stack/templates/node-info.yaml \
-r /home/stack/templates/roles_data.yaml \
-n /home/stack/templates/network_data.yaml \
-e /home/stack/templates/overcloud_images.yaml \
-e /home/stack/templates/network-isolation.yaml \
-e /home/stack/templates/network-environment.yaml \
-e /home/stack/templates/netapp-extra/netapp-hci.yaml
