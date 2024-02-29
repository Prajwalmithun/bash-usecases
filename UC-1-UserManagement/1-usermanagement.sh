#! /bin/bash

# Create a group (groupname: ninjas)
echo -e "[1] Creating a group (groupname: ninjas)...\n"
sleep 2
sudo groupadd ninjas
echo -e "Group created: ninjas\n"

# Check if the group (groupname: ninjas) has been created
echo -e "[1.1] Checking if the group (groupname: ninjas) has been created...\n"
sleep 2
cat /etc/group | tail -1  
echo -e "\n"


# Create a user (username: riya) 
echo -e "[2] Creating a user (username: riya)...\n"
sleep 2
sudo useradd -m riya
echo -e "User created: riya\n"

# Check if the user (username: riya) has been created
echo -e "[2.1] Checking if the user (username: riya) has been created...\n"
sleep 2
cat /etc/passwd | tail -1
echo -e "\n"


# Change the password of the user (username: riya) to (password: riya123)
echo -e "[3] Changing the password of the user (username: riya) to (password: riya123)...\n"
sleep 2
echo "riya:riya123" | sudo chpasswd
echo -e "Password changed: riya123\n"

# Change the shell of the user (username: riya) to /bin/bash
echo -e "[4] Changing the shell of the user (username: riya) to /bin/bash...\n"
sleep 2
sudo usermod --shell /bin/bash riya
echo -e "Shell changed: /bin/bash\n"

# Add the user (username: riya) to the group (groupname: ninjas) 
echo -e "[5] Adding the user (username: riya) to the group (groupname: ninjas)...\n"
sleep 2
sudo usermod -a -G ninjas riya
echo -e "User added to the group: ninjas\n"

# Check if the user (username: riya) has been added to the group (groupname: ninjas)
echo -e "[5.1] Checking if the user (username: riya) has been added to the group (groupname: ninjas)...\n"
sleep 2
cat /etc/group | grep ninjas
echo -e "\n"

