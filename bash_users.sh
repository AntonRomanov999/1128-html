#!/bin/bash
echo "Let's search for users who use bash shell..."
users=$(grep /bin/bash /etc/passwd)
users_number=$(grep /bin/bash /etc/passwd|wc -l)
echo "There are $users_number users:"
for line in $users
do 
	echo -e ${line%%:*}
done



