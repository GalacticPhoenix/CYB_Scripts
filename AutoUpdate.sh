#!/bin/bash
echo "Begining AutoUpdate script"
echo "Hello" $USER "the date is" $(date)
read -p "Would you like to update or upgrade?:" upvar
if [ $upvar = "update" ]; then 
	sudo apt update
elif [ $upvar = "upgrade" ]; then 
    sudo apt upgrade
fi 
read -p "Would you like to reboot, shutdown, clean, remove, or continue": convar
if [ $convar = "reboot" ]; then 
	reboot 
elif [ $convar = "shutdown" ]; then 
	shutdown now
elif [ $covar = "clean" ]; then 
	sudo apt autoclean
elif [ $convar = "remove" ]; then 
	sudo apt autoremove
fi	
echo "Exiting Script"

