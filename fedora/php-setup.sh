sudo dnf update -y
sudo dnf install httpd -y
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo firewall-cmd --reload
sudo dnf install mariadb-server -y
sudo systemctl enable --now mariadb
sudo mysql_secure_installation
sudo dnf install php php-mysqlnd php-cli php-common php-gd php-xml php-mbstring -y
sudo systemctl restart httpd
sudo systemctl enable httpd
