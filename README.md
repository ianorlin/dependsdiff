dependsdiff
===========

On debian based systems a bash script to take the diff of two packages which is useful for finding what depencies are needed more than a certain metapackage

To use the script you need bash coreutil diffutils and apt.

 Main Usage it dependsdiff.sh metapackage package2
This is useful from time in IRC when someone asks what dependencies will this bring and the people helping out have customized systems that are not a defualt install running unmet dependencies will only show on the volunteers system not the system of the person trying to be helped. 
An example would be if you are in the folder with dependsdiff
./dependsdiff.sh lubuntu-desktop htop


Instead this provides a way if there is a metapackage like in ubuntu the ubuntu-desktop lubuntu-desktop metapackages will show the differences from the default installed systems which can help new users know what dependencies will be installed over a base installation. 

Also note this program is built on the assumption you do not have shell access to the host machine like for people who join an irc channel. If you do have host access is probably easier and better tested just to use apt-cache unmet <package name> 
Feel free to test and report issue or even contribute code.

I remembered I produced this and wanted to think of a way to expand it so I thought I could modify and add dependshare.sh which will show the two common dependencies of two packages or metapackages.  Could be useful in seeing if you find a bug in something if teams for other desktop environments might want to know and be affected as well. The usages is bash dependsshare.sh package1 package2  
