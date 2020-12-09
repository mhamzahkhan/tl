#!/bin/bash

function run {
	echo "Run Time: $(date)"
	echo "Script Name: $0"
	echo "Directories/Folders in PWD:"
	ls -l
	echo
	echo "Public IP address: $(curl -s ifconfig.co)"
	echo "Total Physical RAM: $(grep MemTotal /proc/meminfo | awk '{$2/=1024;printf "%.2f MB", $2}')"
	echo "PID: $$"
	echo "Executing User: $(whoami)"
	echo
}

[ ! -d ~/TrueLayer ] && mkdir ~/TrueLayer

if [ ! -f ~/TrueLayer/TLTest.txt ]; then
	run > ~/TrueLayer/TLTest.txt
else
	echo "#####################################" >> ~/TrueLayer/TLTest.txt
	run >> ~/TrueLayer/TLTest.txt
fi
