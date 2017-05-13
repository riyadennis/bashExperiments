#!/bin/sh
# Manage a simple todo list using bash
FILE=~/Documents/todo

if [ -w "$FILE" ]
then
  echo "You have existing things in your todo:"
  while IFS= read -r varname; do
    printf '%s\n' "$varname"
  done < "$FILE"
else
    echo >> $FILE
    sudo chmod 777 "$FILE"
fi
echo "Enter things you want to add to your todo"
read todo
echo "$todo" >> $FILE
