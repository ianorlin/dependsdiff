#!/bin/bash

# Copyright 2014 Brendan Perrine This is released under the GPL V2  

# This script will take the input name of one metapackage as a base system like lubuntu-desktop write a second file with the depends in another order sort the file alph#abetically and take a take a diff of the two files 
#bugs does not properly handel recursive dependencies so for example a package in lubuntu-core which is a dependency of lubuntu desktop this file with pcmanfm 

apt-cache depends $1 > /tmp/metapackage_dep_listing
apt-cache depends $2 > /tmp/depends_packages

#here is where should check for $2 depending on $1 in which case are done
grep $2 /tmp/metapackage_dep_listing >/dev/null
if [ $? -eq 0 ] ; then 
  echo "$2 depends on on $1 and as such it should already be isntalled"
else

cat /tmp/metapackage_dep_listing >> /tmp/depends_packages 

##stop duplicate depends 
sort --unique /tmp/depends_packages -o /tmp/depends_packages
sort /tmp/metapackage_dep_listing -o /tmp/metapackage_dep_listing 

diff   /tmp/metapackage_dep_listing /tmp/depends_packages|grep '^[<>\|]'; 
fi
