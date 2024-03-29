#!/bin/bash
which zenity > /dev/null
if [ $? == 0 ]
then
echo "Zenity already installed"
else
ping -c 3 google.com
if [ $? == 0 ]
then 
sudo apt-get update -y
sudo apt-get install -y zenity
else
echo "Check your Internet Connection"
fi
fi
which figlet > /dev/null
if [ $? == 0 ]
then 
echo "Figlet already Installed"
else
ping -c 3 google.com
if [ $? == 0 ]
then
sudo apt-get update -y
sudo apt-get install figlet
else
echo "Check your Internet connection"
fi
fi
which md5sum > /dev/null
if [ $? == 0 ]
then
echo "md5sum already installed"
else
ping -c 3 google.com
if [ $? == 0 ]
then
sudo apt-get update -y
sudo apt-get install ucommon-utils
else
echo "check your internet connection"
fi
fi
password=$(zenity --password --title="Set your Password")
echo
sed "s/ramya/`md5sum <<< $password`/g" terminallock.sh > TerminalLock
sudo rm terminallock.sh
sudo chmod +x TerminalLock
sudo mv TerminalLock /usr/bin/
sudo echo TerminalLock >> $HOME/.bashrc
cd 
sudo rm -r Terminallock_zenity
cd ..
