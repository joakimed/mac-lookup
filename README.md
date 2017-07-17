Takes a MAC address (or OUI) as input, 
extracts OUI (first 6 digits in base 16), greps and prints vendor name
TODO: Support more input arguments, support piping from "unclean" sources such as nmap and ifconfig
The dream: 'nmap -A 192.168.0.0 | mac_lookup' would output nmap result with added vendor column, 
useful if you are looking for a router with a non-standard ip like 10.0.0.138 etc.

# Updated list can be downloaded from http://standards-oui.ieee.org/oui/oui.txt

# Or run this command if you are updating from an earlier list (named mac.list):
wget http://standards-oui.ieee.org/oui/oui.txt && mv mac.list mac-list.old && mv oui.txt mac.list

# Or run this command if you do not already have a list:
wget http://standards-oui.ieee.org/oui/oui.txt && mv oui.txt mac.list
