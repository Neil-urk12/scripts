sudo dnf update -y
sudo dnf install httpd -y
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo firewall-cmd --reload
sudo dnf instll mariadb-server -y
sudo systemctl enable --now mariadb
sudo mysql_secure_installation
sudo dnf install php php-mysqlnd php-cli php-common -y
sudo systemctl restart httpd
