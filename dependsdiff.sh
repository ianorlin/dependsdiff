#!/bin/bash

# Copyright 2014 Brendan Perrine This is released under the GPL V2  

# This script will take the input name of one metapackage as a base system like lubuntu-desktop write a second file with the depends in another order sort the file alph#abetically and take a take a diff of the two files 
#bugs does not properly handel recursive dependencies so for example a package in lubuntu-core which is a dependency of lubuntu desktop this file with pcmanfm 

apt-cache depends $1 > /tmp/metapackage_dep_listing
apt-cache depends $2 > /tmp/depends_packages

cat /tmp/metapackage_dep_listing >> /tmp/depends_packages 

##stop duplicate depends 
sort --unique /tmp/depends_packages -o /tmp/depends_packages
sort /tmp/metapackage_dep_listing -o /tmp/metapackage_dep_listing 

diff /tmp/metapackage_dep_listing /tmp/depends_packages 

