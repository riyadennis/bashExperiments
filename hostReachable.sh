#!/bin/sh
echo "Please enter the host name that you want to check eg: google.com"
read HOSTNAME

ping -c 1 $HOSTNAME

if [ "$?" -eq 0 ]
then
  echo "$HOSTNAME is reachable"
else
  echo "$HOSTNAME is not reachable"
fi
