#!/bin/sh

# Written by Caine Hörr
# Written on 2022-05-17

# Identify processor type...
processor_type=$(/usr/sbin/sysctl -n machdep.cpu.brand_string | /usr/bin/grep "M1")

if [ -z "${processor_type}" ]; then
	echo "<result>Not Applicable</result>"
	exit 0
fi

# Determine if Rosetta 2 is installed...
if [ $(/usr/bin/pgrep oahd >/dev/null 2>&1;echo $?) -eq 0 ]; then
	echo "<result>True</result>"
else
	echo "<result>False</result>"
fi

exit 0