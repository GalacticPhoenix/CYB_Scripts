#/bin/bash 

df -h
echo "tmpfs partitions are virtual memory partitions/swp files"
read -p "what file do you want to look at?: " wow
if [ $wow == 'root' ]; then 
	ow=$(df -h | awk {'print $5'} | sed -n '4p')
elif [ $wow == "tmpfs1"];then 
	ow=$(df -h | awk {'print $5'} | sed -n '3p')
elif [ $wow == "tmpfs2"];then 
	ow=$(df -h | awk {'print $5'} | sed -n '5p')
elif [ $wow == "tmpfs3"];then 
	ow=$(df -h | awk {'print $5'} | sed -n '6p')
elif [ $wow == "tmpfs4"];then 
	ow=$(df -h | awk {'print $5'} | sed -n '8p')
elif [ $wow == "boot"];then 
	ow=$(df -h | awk {'print $5'} | sed -n '7p')
elif [ $wow == "dev"];then 
	ow=$(df -h | awk {'print $5'} | sed -n '2p')
OW=${ow//%/}
fi 

if [[ $OW -lt 70 ]]; then 
	echo "DOWNLOAD THAT STEAM LIBRARY NOW!" 
elif [[ $OW -lt 90 && $OW -gt 70 ]]; then 
	echo "You might want to stop downloading that steam libray."	
elif [[ $OW -lt 99 && $OW -gt 90 ]]; then 
	echo "You might want to be concerned about your space buddy."
elif [[ $OW -lt 100 && $OW -gt 98 ]]; then 
	echo "Whatever you do DON'T update your kernel it will brick your pc." 
else 
	echo "What have you done." 
fi 

