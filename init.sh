echo on
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/nginx.conf
sudo unlink /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart