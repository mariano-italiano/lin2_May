#!/bin/bash

# inputfile : servers
# execution: ./patchServers.sh servers

IFS=$'\n'
set -f
for server in $(cat < "$1"); do
        ssh root@$server "dnf update -y"
done
