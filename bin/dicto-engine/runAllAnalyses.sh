#!/bin/bash  

cmdSuffix='-cmd.sh'

MostRecentAnalysis=$1


for sh in $(find $MostRecentAnalysis -path "*$cmdSuffix"); do
	noSuffix=${sh/$cmdSuffix/} 
	
	
	if [ -f "$noSuffix.result" ]
	then
	  	echo "."
	else 
		chmod +x $sh
		echo $noSuffix
		echo "run >> $sh"
		bash $sh
	fi
done	