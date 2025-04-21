#!/bin/bash
apt update
apt install -y vsftpd
sed -i 's/anonymous_enable=NO/anonymous_enable=YES/' /etc/vsftpd.conf
systemctl enable vsftpd
systemctl restart vsftpd

