#!/bin/bash
if [ -d $1 ]
then 
	chmod -R $2 $1
	if [ $? != 0 ]
	then
		echo "Operation not permitted or Permission bit is not set right"
	else
		echo "Permission is changed"		
		ls -al $1
	fi
else
	echo "Directory is not present"
fi
	
