#!/bin/bash
echo "Let's search for users who use bash shell..."
users=$(grep /bin/bash /etc/passwd)
users_number=$(grep /bin/bash /etc/passwd|wc -l)
echo "$users_number user(s) were found:"
for line in $users
do 
	echo -e ${line%%:*}
done



