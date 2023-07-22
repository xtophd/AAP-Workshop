#!/bin/bash

##
## NOTE: you must point to the correct inventory
##

myInventory="./config/master-config.yml"

if [ ! -e "${myInventory}" ] ; then
    echo "ERROR: Are you in the right directory? Can not find ${myInventory}" ; exit
    exit
fi

if [ ! -e "./playbooks" ] ; then
    echo "ERROR: Are you in the right directory? Can not find ./playbooks" ; exit
    exit
fi

##
##
##

case "$1" in
    "all")
        time  ansible-playbook --ask-vault-pass -i ${myInventory} -f 10  ./playbooks/aap.yml
        ;;
         
    "registration"  | \
    "repos"         | \
    "prep"          | \
    "install"       | \
    "bastion"       | \
    "postinstall")

        time  ansible-playbook --ask-vault-pass -i ${myInventory} -f 10 --tags $1 ./playbooks/aap.yml
        ;;

    *)
        echo "USAGE: sat6-workshop.sh [ all | registration | repos | prep | install | bastion | postinstall ]"
        ;;

esac         

