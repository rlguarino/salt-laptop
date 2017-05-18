#!/bin/bash
set -x 

DIR=$(dirname $(readlink -f $0))

println "DIR: %s" $DIR

sudo ln -s $DIR/pillar /srv/pillar
sudo ln -s $DIR/salt   /srv/salt
sudo ln -s $DIR/minion /etc/salt/minion
