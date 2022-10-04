#!/usr/bin/bash -x

PATH=/usr/bin:/usr/sbin/
export PATH

# checkout the OSB package
osc co home:useidel unifictrl

cd home*
# copy (updated) files to working directory
cp ../fedora-rpm/*spec unifictrl/
rm unifictrl/UniFi*.unix.zip
cp ../fedora-rpm/UniFi*.unix.zip unifictrl/

# upload changed content
osc addremove
osc ci -m "Version update" unifictrl



