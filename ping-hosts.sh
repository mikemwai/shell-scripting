#!/bin/bash

ping -c1 192.168.1.1 # Update the ip_address to 192.168.1.235
         if [ $? -eq 0 ]
         then
         echo OK
         else
         echo NOT OK
         fi

# Don't show the output
ping -c1 192.168.1.1 &> /dev/null
         if [ $? -eq 0 ]
         then
         echo OK
         else
         echo NOT OK
         fi

# Define the variable
#!/bin/bash

hosts = "192.168.1.1" # Update the ip_address to 192.168.1.235
ping -c1 $hosts &> /dev/null
        if [ $? -eq 0 ]
        then
        echo $hosts OK
        else
        echo $hosts NOT OK
        fi

