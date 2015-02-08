#!/bin/bash

# Copyright 2015 Brendan Perrine This is released under the GPL V2  

#This script is a somewhat trivial extension of my dependsdiff script I wrote in 2014 that will show shared packages betweeen packages and use basically same algorthm with a tiny bit of tweaking. 

apt-cache depends $1 > /tmp/metapackage_dep_listing
apt-cache depends $2 > /tmp/depends_packages

#here is where should check for $2 depending on $1 in which case dependencies of $2 should be listed as shared of $1
grep $2 /tmp/metapackage_dep_listing >/dev/null
if [ $? -eq 0 ] ; then 
  apt-cache depends $2
# case where $1 depends on $2 which would not matter in first because checking if different 

else  
grep $1 /tmp/depends_packages >/dev/null
if [ $? -eq 0 ] ; then 
  apt-cache depends $1 
else


sort /tmp/depends_packages -o /tmp/depends_packages
sort /tmp/metapackage_dep_listing -o /tmp/metapackage_dep_listing 

comm -12  /tmp/metapackage_dep_listing /tmp/depends_packages; 
fi 
fi 
