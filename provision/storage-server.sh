#!/bin/bash
source /vagrant/provision/vars.sh

BASEDIR='/vagrant/Files/Curso-4751-Storage-Server'

#Function para adicionar os usuários
usersADD;


#Relação de Arquivos:
cp "${BASEDIR}/hosts" /etc/hosts
cp "${BASEDIR}/hostname" /etc/hostname
cp "${BASEDIR}/ifcfg-enp0s3" /etc/sysconfig/network-scripts/ifcfg-enp0s3
cp "${BASEDIR}/98_4linux" /etc/sudoers.d/98_4linux
cp "${BASEDIR}/selinux" /etc/sysconfig/selinux


sudo systemctl disable firewalld
