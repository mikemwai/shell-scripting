#!/bin/bash
# The script pings a remote host and shows the output

ping -c1 192.168.1.1 # Update the ip_address to 192.168.1.235 or any. The ping command only pings once.
if [ $? -eq 0 ]
then
echo OK
else
echo NOT OK
fi

#!/bin/bash
# Don't show the ping output just OK or NOT OK

ping -c1 192.168.1.1 &> /dev/null
if [ $? -eq 0 ]
then
echo OK
else
echo NOT OK
fi

#!/bin/bash
# Define the variable

hosts = "192.168.1.1" # Update the ip_address to 192.168.1.235
ping -c1 $hosts &> /dev/null
if [ $? -eq 0 ]
then
echo $hosts OK
else
echo $hosts NOT OK
fi

#!/bin/bash
# The script pings multiple remote hosts and shows the output

hosts = "hosts_file_path"

for ip in $(cat $hosts)
do
ping -c1 $ip &> /dev/null
if [ $? -eq 0 ]
then
echo $ip is OK
else
echo $ip is NOT OK
done 
