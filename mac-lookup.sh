#!/bin/bash
# Takes a MAC address (or OUI) as input, 
# extracts OUI (first 6 digits in base 16), greps and prints vendor name
# TODO: Support more input arguments, support piping from "unclean" sources such as nmap and ifconfig
# The dream: 'nmap -A 192.168.0.0 | mac_lookup' would output nmap result with added vendor column, 
# useful if you are looking for a router with a non-standard ip like 10.0.0.138 etc.

db=mac.list # Path and filename of OUI list.
			# Default: 'db=mac.list' if list and script are in the same directory.
			# Example 1: 'db=~/mac.list'
			# Example 2: 'db=/foo/bar/mac.list'
			#
			# Updated list can be downloaded from http://standards-oui.ieee.org/oui/oui.txt
			# Or run the following command
			# wget http://standards-oui.ieee.org/oui/oui.txt && mv mac.list mac-list.old && mv oui.txt mac.list

if [ ! -f $db ]; then
    echo "Database not found! Make sure path is set on line 8 in mac_lookup.sh
exiting..."
	exit
fi

if [ -n "$1" ]; then
	oui_1=$(echo $1 | sed 's/[-: ]//g' | head -c 6)
	vnd_1=$(cat $db | grep -i "$oui_1" | cut -f3)
	echo "$1	$vnd_1"
else echo "Usage: ./mac_lookup ARG1 ARG2 ...
Accepting MAC(12), OUI(6) using colon, dash or no delimiters. Max 9 addresses at a time."
exit
fi

if [ -n "$2" ]; then
	oui_2=$(echo $2 | sed 's/[-: ]//g' | head -c 6)
	vnd_2=$(cat $db | grep -i "$oui_2" | cut -f3)
	echo "$2	$vnd_2"
else exit
fi

if [ -n "$3" ]; then
	oui_3=$(echo $3 | sed 's/[-: ]//g' | head -c 6)
	vnd_3=$(cat $db | grep -i "$oui_3" | cut -f3)
	echo "$3	$vnd_3"
else exit
fi

if [ -n "$4" ]; then
	oui_4=$(echo $4 | sed 's/[-: ]//g' | head -c 6)
	vnd_4=$(cat $db | grep -i "$oui_4" | cut -f3)
	echo "$4	$vnd_4"
else exit
fi

if [ -n "$5" ]; then
	oui_5=$(echo $5 | sed 's/[-: ]//g' | head -c 6)
	vnd_5=$(cat $db | grep -i "$oui_5" | cut -f3)
	echo "$5	$vnd_5"
else exit
fi

if [ -n "$6" ]; then
	oui_6=$(echo $6 | sed 's/[-: ]//g' | head -c 6)
	vnd_6=$(cat $db | grep -i "$oui_6" | cut -f3)
	echo "$6	$vnd_6"
else exit
fi

if [ -n "$7" ]; then
	oui_7=$(echo $7 | sed 's/[-: ]//g' | head -c 6)
	vnd_7=$(cat $db | grep -i "$oui_7" | cut -f3)
	echo "$7	$vnd_7"
else exit
fi

if [ -n "$8" ]; then
	oui_8=$(echo $8 | sed 's/[-: ]//g' | head -c 6)
	vnd_8=$(cat $db | grep -i "$oui_8" | cut -f3)
	echo "$8	$vnd_8"
else exit
fi

if [ -n "$9" ]; then
	oui_9=$(echo $9 | sed 's/[-: ]//g' | head -c 6)
	vnd_9=$(cat $db | grep -i "$oui_9" | cut -f3)
	echo "$9	$vnd_9"
else exit
fi