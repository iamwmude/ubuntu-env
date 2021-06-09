#!/bin/bash

LINK_STATUS=$(. check-symbolic-link-health.sh)

if [ LINK_STATUS == 'Broken' ] ; then
    sudo vmhgfs-fuse .host:/ /mnt/hgfs/ -o allow_other -o uid=1000
fi
