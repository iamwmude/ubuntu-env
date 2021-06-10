#!/bin/bash

DIR=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
LINK_STATUS=$(. $DIR/check-symbolic-link-health.sh)

if [ $LINK_STATUS == 'Broken' ] ; then
    sudo vmhgfs-fuse .host:/ /mnt/hgfs/ -o allow_other -o uid=1000
    echo 'Done'
fi
