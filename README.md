dependsdiff
===========

on debian based systems a bash script to take the diff of two packages which is useful for finding what depencies are needed more than a certain metapackage

To use the script you need bash coreutil diffutils and apt.

 Main Usage it dependsdiff.sh metapackage package2
This is useful from time in IRC when someone asks what dependencies will this bring and the people helping out have customized systems that are not a defualt install running unmet dependencies will only show on the volunteers system not the system of the person trying to be helped. 
An example would be if you are in the folder with dependsdiff
./dependsdiff.sh lubuntu-desktop htop


Instead this provides a way if there is a metapackage like in ubuntu the ubuntu-desktop lubuntu-desktop metapackages will show the differences from the default installed systems which can help new users know what dependencies will be installed over a base installation. 

Also note this program is built on the assumption you do not have shell access to the host machine like for people who join an irc channel. If you do have host access is probably easier and better tested just to use apt-cache unmet <package name> 
Feel free to test and report issue or even contribute code. 
