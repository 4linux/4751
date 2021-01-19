#!/bin/bash
source /vagrant/provision/vars.sh

BASEDIR='/vagrant/Files/Curso-4751-IPA-Server'

#Function para adicionar os usuários
usersADD;


#Relação de Arquivos:
cp "${BASEDIR}/hosts" /etc/hosts
cp "${BASEDIR}/hostname" /etc/hostname
cp "${BASEDIR}/ifcfg-enp0s3" /etc/sysconfig/network-scripts/ifcfg-enp0s3
cp "${BASEDIR}/98_4linux" /etc/sudoers.d/98_4linux
cp "${BASEDIR}/selinux" /etc/sysconfig/selinux

#Deixar o Firewalld desativado
systemctl disable firewalld

#Pacotes instalados:
sudo yum update -y;
sudo yum install -y ipa-server            \
            ipa-server-dns        \
            ipa-client            \
            ipa-client-common     \
            ipa-common            \
            vsftpd ;

#Ativar na inicialização os serviços do IPA e VSftpd
sudo systemctl enable ipa
sudo systemctl enable vsftpd





#FALHANDO A CONFIGURAÇÃO DEVIDO A INICIALIZAÇÃO DESTA CONFIGURAÇÃO DEPENDENDE DE DNS
#Configurar o IPA Server
# sudo ipa-server-install --uninstall;
# sudo ipa-server-install -U --hostname=ipaserver.dexter.com.br  \
#                       --domain=ipaserver.dexter.com.br    \
#                       --realm=DEXTER.COM.BR               \
#                       -p 'curso4linux' -a 'curso4linux'   \
#                       --setup-dns --forward-policy=only --forwarder=8.8.8.8 ;
#
# #Adicionar usuário linus no IPA Server
# echo curso4linux | kinit admin
# echo 4linux | ipa user-add linus --first='Linus' --last='Torvalds' --cn='Linus Torvalds' --password
#
# #Copiar o arquivo /etc/ipa/ca.crt para /var/ftp/pub/
# cp /etc/ipa/ca.crt /var/ftp/pub/
