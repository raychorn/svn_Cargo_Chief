#!/bin/bash 

DIRNAME="/usr/local/@@TEMPLATE@@/_Django-1.3_Multi-Threaded"
parts=(${DIRNAME//\// })
fname=${parts[tLen-1]}

if [ -d "$DIRNAME" ]; then 
	echo "Making symbolic link for Django."
	ln -s $DIRNAME $fname
else
	echo "Checking-out code from svn."
	svn checkout https://unmetered.vyperlogix.com/svn/repo1/trunk/python/_Django-1.3_Multi-Threaded /usr/local/djangocloud/_Django-1.3_Multi-Threaded --username read_only --password peekab00
fi

DIRNAME2="/usr/local/@@TEMPLATE@@/vyperlogix_2_7_0.zip"
parts2=(${DIRNAME2//\// })
fname2=${parts2[tLen-1]}

if [ -f "$DIRNAME2" ]; then 
	echo "Making symbolic link for vyperlogix library."
	ln -s $DIRNAME2 $fname2
fi

#chmod +x /usr/local/djangocloud/djangocloud/*.sh

