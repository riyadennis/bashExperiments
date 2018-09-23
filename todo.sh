#!/bin/sh
# Manage a simple todo list using bash
FILE=~/Documents/todo

date=`date`
if [ -w "$FILE" ]
then
  echo "You have existing things in your todo:"
  while IFS= read -r varname; do
    printf '%s\n' "$varname"
  done < "$FILE"
  echo "Do you want to clear your todo yes/no"
  read choice
  if [ $choice="yes" ]
  then
    truncate -s0 file
    echo "Todo cleared"
  fi
else
    echo >> $FILE
    sudo chmod 777 "$FILE"
fi
echo "Enter things you want to add to your todo"
read todo
echo "$todo ---- $date" >> $FILE
