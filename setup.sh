sudo apt-get update -y
sudo apt-get install nginx -y
sudo systemctl enable nginx
sudo systemctl restart nginx
sudo rm -f /var/www/html/index.nginx-debian.html