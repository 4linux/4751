#!/bin/bash
source /vagrant/provision/vars.sh

BASEDIR='/vagrant/Files/Curso-4751-Virtualization-Host'

#Function para adicionar os usuários
usersADD;


#Relação de Arquivos:
cp "${BASEDIR}/hosts" /etc/hosts
cp "${BASEDIR}/hostname" /etc/hostname
cp "${BASEDIR}/ifcfg-enp0s3" /etc/sysconfig/network-scripts/ifcfg-enp0s3
cp "${BASEDIR}/selinux" /etc/sysconfig/selinux
cp "${BASEDIR}/centos-6.xml" /opt/centos-6.xml

#Function para instalar a interface gráfica
centosGUI;
