#!/bin/bash

#
# the volume netshare driver doesnt properly recreat volumes after system reboot
#

# this script gets a list of all volumes defined with the nfs driver and
# creates the volumes on all hosts

for s in $(grep -r "share: nas.barfoot.local" ./*/* | awk '{print $3}'); do
	ssh node00 sudo docker volume create --driver nfs --name $s
  ssh node01 sudo docker volume create --driver nfs --name $s
  ssh node02 sudo docker volume create --driver nfs --name $s
done
