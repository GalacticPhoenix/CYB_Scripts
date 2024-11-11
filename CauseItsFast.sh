#/bin/bash

echo $(date) >> Speed.log 
ZOOM=$(speedtest-cli --secure |  grep 'from\|Hosted\|Download\|Upload' )
echo "$ZOOM"
echo " "
Download=$(echo "$ZOOM" | grep "Download" | awk {'print int($2)'})  
Upload=$(echo "$ZOOM" | grep "Upload" | awk {'print int($2)'}) 
Host=$(echo "$ZOOM" | sed -n '2p' | awk {'print $3'})
ISP=$(echo "$ZOOM" | sed -n '1p' | awk {'print $3'})  

echo $ISP >> Speed.log
echo $Host >> Speed.log
echo $Download >> Speed.log
echo $Upload >> Speed.log

if [[ $Download -lt 40 ]]; then 
		echo "Your wifi sucks!"
elif [[ $Download -gt 40 ]]; then 
	echo "It's pretty good right now."
fi 

