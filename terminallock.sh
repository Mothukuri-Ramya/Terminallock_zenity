#! /bin/bash
echo
password=$(zenity --password --title="Login")
if [[ `md5sum <<< $password` == "ramya" ]]
then
figlet "welcome"
else
figlet "who are you"
sleep 3
kill $(pgrep terminal)
fi



