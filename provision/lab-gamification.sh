#!/bin/bash
source /vagrant/provision/vars.sh

BASEDIR='/vagrant/Files/Curso-4751-Lab-Gamification'


#Function para adicionar os usuários
usersADD;

#Relação de Arquivos:
cp "${BASEDIR}/hosts" /etc/hosts
cp "${BASEDIR}/hostname" /etc/hostname
cp "${BASEDIR}/ifcfg-enp0s3" /etc/sysconfig/network-scripts/ifcfg-enp0s3
cp "${BASEDIR}/ifcfg-enp0s8" /etc/sysconfig/network-scripts/ifcfg-enp0s8
cp "${BASEDIR}/98_4linux" /etc/sudoers.d/98_4linux
cp "${BASEDIR}/inspec-2.2.70-1.el7.x86_64.rpm" /opt/inspec-2.2.70-1.el7.x86_64.rpm
cp "${BASEDIR}/linux-server.xml" /opt/linux-server.xml



cp "${BASEDIR}/snoopy-install.sh" /opt/snoopy-install.sh
sudo chmod +755 /opt/snoopy-install.sh
cp "${BASEDIR}/lab01-kvm" /usr/sbin/lab01-kvm
sudo chmod +755 /usr/sbin/lab01-kvm
cp "${BASEDIR}/lab02-dns-mail" /usr/sbin/lab02-dns-mail
sudo chmod +755 /usr/sbin/lab02-dns-mail
cp "${BASEDIR}/lab03-ftp-web" /usr/sbin/lab03-ftp-web
sudo chmod +755 /usr/sbin/lab03-ftp-web
cp "${BASEDIR}/lab04-proxy-mysql" /usr/sbin/lab04-proxy-mysql
sudo chmod +755 /usr/sbin/lab04-proxy-mysql
cp "${BASEDIR}/lab05-ipaserver" /usr/sbin/lab05-ipaserver
sudo sudo chmod +755 /usr/sbin/lab05-ipaserver
cp "${BASEDIR}/lab06-acls" /usr/sbin/lab06-acls
sudo chmod +755 /usr/sbin/lab06-acls
cp "${BASEDIR}/lab07-firewalld" /usr/sbin/lab07-firewalld
sudo sudo chmod +755 /usr/sbin/lab07-firewalld
cp "${BASEDIR}/lab08-selinux" /usr/sbin/lab08-selinux
sudo chmod +755 /usr/sbin/lab08-selinux
cp "${BASEDIR}/lab09-raid-lvm" /usr/sbin/lab09-raid-lvm
sudo chmod +755 /usr/sbin/lab09-raid-lvm
cp "${BASEDIR}/lab10-cifs-nfs" /usr/sbin/lab10-cifs-nfs
cp "${BASEDIR}/limpar-lab" /usr/sbin/limpar-lab

sudo systemctl disable firewalld
