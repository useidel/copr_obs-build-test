#!/usr/bin/bash -x

PATH=/usr/bin:/usr/sbin/
export PATH

# checkout the OSB package
osc co home:useidel unifictrl

cd home*

# clean up
cd unifictrl 
osc remove UniFi*.unix.zip
rm UniFi*.unix.zip
cd ..

# copy (updated) files to working directory
cp ../fedora-rpm/*spec unifictrl/
cp ../fedora-rpm/UniFi*.unix.zip unifictrl/

# mark files for update (so far only needed for UniFi*.unix.zip)
cd unifictrl
osc add UniFi*.unix.zip
cd ..


# upload changed content
osc ci -m "Version update" unifictrl



