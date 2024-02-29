#! /bin/bash

# Create a directory under /var/tmp/UC-2  
echo -e "[1] Creating a directory under /var/tmp/UC-2...\n"
sleep 2
mkdir /var/tmp/UC-2
echo -e "Directory created: /var/tmp/UC-2\n"

# Navigate to that directory 
echo -e "[2] Navigating to the directory /var/tmp/UC-2...\n"
sleep 2
cd /var/tmp/UC-2
echo -e "Current directory: $(pwd)\n"


# Create a file in that directory (use the touch command) filename: file-UC2.txt
echo -e "[3] Creating a file in that directory (use the touch command) filename: file-UC2.txt...\n"
sleep 2
touch file-UC2.txt
echo -e "File created: file-UC2.txt\n"


# Add some content to the file (filename = file-UC2.txt) (use the echo command) 
echo -e "[4] Adding some content to the file (filename = file-UC2.txt) (use the echo command)...\n"
sleep 2
echo "hello from use case 2" > file-UC2.txt
echo -e "Content added to the file: file-UC2.txt\n"


# Display the content of the file (filename: file-UC2.txt)  (use the cat command)
echo -e "[4] Displaying the content of the file (filename: file-UC2.txt)...\n"
sleep 1
cat file-UC2.txt


# Change the user owner of the file (filename: file-UC2.txt) to user (username: riya)
echo -e "[5] Changing the user owner of the file (filename: file-UC2.txt) to user (username: riya)...\n"
sleep 2
sudo chown riya file-UC2.txt
echo -e "User owner of the file (filename: file-UC2.txt) changed to user (username: riya)\n"

# Change the group owner of the file (filename: file-UC2.txt) to group (groupname: ninjas)
echo -e "[6] Changing the group owner of the file (filename: file-UC2.txt) to group (groupname: ninjas)...\n"
sleep 2
sudo chown :ninjas file-UC2.txt
echo -e "Group owner of the file (filename: file-UC2.txt) changed to group (groupname: ninjas)\n"

# Change the permissions of the file (filename: file-UC2.txt) to 740
echo -e "[7] Changing the permissions of the file (filename: file-UC2.txt) to 740...\n"
sleep 2
sudo chmod 740 file-UC2.txt
echo -e "Permissions of the file (filename: file-UC2.txt) changed to 740\n"

# Check if the file (filename: file-UC2.txt) has the correct owenership, permissions (use the ls -lrth command)
echo -e "[8] Checking if the file (filename: file-UC2.txt) has the correct owenership, permissions...\n"
sleep 2
ls -lrth file-UC2.txt
echo -e "\n"

