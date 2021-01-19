#!/bin/bash
source /vagrant/provision/vars.sh


BASEDIR='/vagrant/Files/Curso-4751-Security'

#Function para adicionar os usuários
usersADD;


#Relação de Arquivos:
cp "${BASEDIR}/hosts" /etc/hosts
cp "${BASEDIR}/hostname" /etc/hostname
cp "${BASEDIR}/rc.local" /etc/rc.local
cp "${BASEDIR}/interfaces" /etc/network/interfaces
cp "${BASEDIR}/98_4linux" /etc/sudoers.d/98_4linux
cp "${BASEDIR}/dexterlogo.png" /opt/dexterlogo.png
