#!/bin/bash
echo ECS_CLUSTER=${ecs_cluster_name} >> /etc/ecs/ecs.config

MOUNTPOINT=/var/lib/docker/volumes/efs_vol/_data
sudo yum install -y nfs-utils
#sudo stop ecs
#sudo mkdir -p ${MOUNTPOINT}
#sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2 ${efs_dnsname}:/ $MOUNTPOINT
sudo docker volume create --driver local \
    --opt type=nfs4 \
    --opt o=nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2 \
    --opt device=${efs_dnsname}:/ \
    efs
#sudo service docker restart
#sudo start ecs

