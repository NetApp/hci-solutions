#!/bin/bash
openstack  overcloud deploy --templates \
--timeout 80 \
--stack overcloud \
-e /home/stack/templates/node-info.yaml \
-e /home/stack/templates/octavia.yaml \
-e /home/stack/templates/octavia_timeouts.yaml \
-r /home/stack/templates/roles_data.yaml \
-n /home/stack/templates/network_data.yaml \
-e /home/stack/templates/network-isolation.yaml \
-e /home/stack/templates/network-environment.yaml \
-e /home/stack/templates/netapp-extra/netapp-hci.yaml \
-e /home/stack/templates/netapp-extra/post-config.yaml
