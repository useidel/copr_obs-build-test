#!/usr/bin/bash -x

PATH=/usr/bin:/usr/sbin/
export PATH

# checkout the OSB package
osc co home:useidel unifictrl

cd home*
# copy (updated) files to working directory
cp ../fedora-rpm/*spec unifictrl/
cp ../fedora-rpm/UniFi*.unix.zip unifictrl/

# upload changed content
osc ci unifictrl



