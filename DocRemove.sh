#!/bin/bash
read -p "What would you like to delete:" no
if [[ "$no" == *"-s"* ]]; then 
	echo "$no" > removelog.txt
	rm $no
else
	echo $no "has been deleted on" $(date) "by" $USER 
	echo "$no"  >> removelog.txt
	rm $no 
fi 
