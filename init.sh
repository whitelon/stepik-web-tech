echo on
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/nginx.conf
sudo unlink /etc/nginx/sites-enabled/default
sudo ln -s etc/hello.py /etc/gunicorn.d/hello.py
sudo /etc/init.d/nginx restart
gunicorn -c /etc/gunicorn.d/hello.py hello:wsgi_application
