#! /bin/bash

# Refs
# https://certbot.eff.org/docs/using.html#webroot
# https://blog.fazero.me/2017/09/16/letencrypt/
# https://www.biaodianfu.com/centos-7-nginx-lets-encrypt.html

docker run -it --rm --name certbot \
	-v "/mnt/data/ssl/etc:/etc/letsencrypt" \
	-v "/mnt/data/ssl/lib:/var/lib/letsencrypt" \
	-v "/mnt/data/app/webroot:/var/www/html" \
	certbot/certbot certonly -n --no-eff-email --email admin@example.com --agree-tos --webroot -w /var/www/html -d domain.example.com
