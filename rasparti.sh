#!/bin/sh
#post installation script
#made by Alessandro Massarenti

#run this as a sudo
echo "Questo programma applicherà tutte le impostazioni di base al tuo raspberry pi e creerà un utente root sicuro"
echo "Dammi un nome utente"
read USER
echo "Dammi la password per il tuo utente"
read PASSWORD

#apt -y update
#apt -y upgrade
#apt -y autoremove

useradd -m -p $PASSWORD $USER
if [ $? -eq 0 ]
then echo "ho creato $USER"
fi

usermod -aG sudo $USER
if [ $? -eq 0 ]
then echo "$USER è ora sudo user" 
fi
