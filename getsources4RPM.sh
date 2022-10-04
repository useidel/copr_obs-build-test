#!/usr/bin/bash -x

PATH=/usr/bin:/usr/sbin/
export PATH

# Get the version from the SPEC file
MYVER=`grep ^Version fedora-rpm/*.spec |awk '{print $2}'`

# Now download the sources 
wget -nd https://dl.ui.com/unifi/$MYVER/UniFi.unix.zip
mv UniFi.unix.zip UniFi-$MYVER.unix.zip


