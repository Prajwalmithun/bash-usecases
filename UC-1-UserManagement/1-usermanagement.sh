#! /bin/bash

# Create a group (groupname: ninjas)
echo -e "[1] Creating a group (groupname: ninjas)...\n"
sudo groupadd ninjas
sleep 2

# Check if the group (groupname: ninjas) has been created
echo -e "[1.1] Checking if the group (groupname: ninjas) has been created...\n"
cat /etc/group | tail -1  
echo -e "\n"
sleep 2

# Create a user (username: riya) 
echo -e "[2] Creating a user (username: riya)...\n"
sudo useradd -m riya
sleep 2

# Check if the user (username: riya) has been created
echo -e "[2.1] Checking if the user (username: riya) has been created...\n"
cat /etc/passwd | tail -1
echo -e "\n"
sleep 2

# Change the password of the user (username: riya) to (password: riya123)
echo -e "[3] Changing the password of the user (username: riya) to (password: riya123)...\n"
echo "riya:riya123" | sudo chpasswd
sleep 2

# Change the shell of the user (username: riya) to /bin/bash
echo -e "[4] Changing the shell of the user (username: riya) to /bin/bash...\n"
sudo usermod --shell /bin/bash riya
sleep 2

# Add the user (username: riya) to the group (groupname: ninjas) 
echo -e "[5] Adding the user (username: riya) to the group (groupname: ninjas)...\n"
sudo usermod -a -G ninjas riya
sleep 2

# Check if the user (username: riya) has been added to the group (groupname: ninjas)
echo -e "[5.1] Checking if the user (username: riya) has been added to the group (groupname: ninjas)...\n"
cat /etc/group | grep ninjas
echo -e "\n"
sleep 2


