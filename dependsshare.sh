#!/bin/bash

# Copyright 2015 Brendan Perrine This is released under the GPL V2  

#This script is a somewhat trivial extension of my dependsdiff script I wrote in 2014 that turns out the best way to do it quite simple using comm and outputing to files and sorting them.  

apt-cache depends $1 > /tmp/metapackage_dep_listing
apt-cache depends $2 > /tmp/depends_packages

sort /tmp/depends_packages -o /tmp/depends_packages
sort /tmp/metapackage_dep_listing -o /tmp/metapackage_dep_listing 

comm -12  /tmp/metapackage_dep_listing /tmp/depends_packages; 
