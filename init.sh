echo on
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/nginx.conf
sudo unlink /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/gunicorn.conf
sudo /etc/init.d/nginx restart
sudo /etc/init.d/gunicorn restart
