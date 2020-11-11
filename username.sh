#! /bin/bash
# username.sh
# Kaitlynn Yamauchi
echo "Enter a username: "
echo "It must only use lower case letters, digits, and an underscore"
echo "It must start with a lower case letter"
echo "It must contain at least 3 but no more than 12 characters"

read USERNAME
while echo "$USERNAME" | egrep -v "^[a-z][a-z_0-9]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username"
	echo "It must only use lower case letters, digits, and an underscore"
	echo "It must start with a lower case letter"
	echo "It must contain at least 3 but no more than 12 characters"
	echo "Enter a username: "
	read USERNAME
done
echo "Thank you"
