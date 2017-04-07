#!/bin/bash
echo "Upgrading all packages using APT..."
read -r -p "Do you want to continue? [y/N]" response
case "$response" in
    [yY][eE][sS]|[yY])
       	sudo apt-get --assume-yes update &&sudo apt-get --assume-yes upgrade &&sudo apt-get --assume-yes autoremove
	echo "Success!"
	#exit
        ;;
    *)
        echo "Cancelled!"
	#exit
        ;;
esac
