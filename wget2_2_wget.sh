### Script to restore wget removing wget2

#!/bin/bash

which wget
wget --version
sudo dnf -y rm wget
which wget
sudo rpm -i wget-1.24.5-1.1.x86_64.rpm
which wget

LastName=`wget --version | grep -wo "Niksic"`
if [ "Niksic" == "$LastName" ]; then
	echo "original wget written by Hrvoje Niksic <hniksic@xemacs.org> reinstalled"
fi
