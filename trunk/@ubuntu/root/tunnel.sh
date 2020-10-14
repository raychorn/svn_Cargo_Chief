#!/bin/bash

UNAME="tunnel"
group="tunnel"

if [ -d "/home" ]; then 
    echo
else
    echo "Making /home"
    mkdir /home
fi

#has_group=$(cat /etc/group | grep tunnel)

#has_user=$(id -u $UNAME >/dev/null 2>&1)

has_user=$(id -u $UNAME)
echo "has_user=$has_user"
if [ X"$has_user" == X"" ]; then
    echo "Adding user $UNAME"

    if grep -q $group /etc/group
    then
       echo "group $group exits."
    else
       groupadd $group
    fi

    useradd -s /bin/bash -m -d /home/$UNAME -c "$UNAME" -g $group $UNAME
    echo -e "peekaboo\npeekaboo" | (passwd $UNAME)
else
    userdel $UNAME
    if [ -d "/home/$UNAME" ]
    then
        rm -f -r /home/$UNAME
    fi

    if grep -q $group /etc/group
    then
       echo "group $group exits."
    else
       groupadd $group
    fi

    useradd -s /bin/bash -m -d /home/$UNAME -c "$UNAME" -g $group $UNAME
    echo -e "peekaboo\npeekaboo" | (passwd $UNAME)
fi

sudo su - $UNAME -c 'ssh-keygen -q -t rsa -N "" -f ~/.ssh/id_rsa 1>./output.txt 2>&1'

#sudo -u tunnel autossh -M 0 -q -f -N -o "ServerAliveInterval 10" -o "ServerAliveCountMax 3" -L22222:23.21.129.225:2222 -p 2222 root@23.21.129.225

