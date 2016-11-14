echo "waiting 5 seconds to boot"
sleep 5
echo "starting certbot"
certbot certonly --text --agree-tos --authenticator webroot --verbose --email orisventus@gmail.com --webroot-path=/var/www/ --rsa-key-size 4096 --key-path=/nginx-ssl/ssl_certificate_key.key --cert-path=/nginx-ssl/ssl_certificate.crt -d $DOMAIN_NAME 

cp /etc/letsencrypt/live/$DOMAIN_NAME/fullchain.pem /nginx-ssl/ssl_certificate.crt 
cp /etc/letsencrypt/live/$DOMAIN_NAME/privkey.pem /nginx-ssl/ssl_certificate_key.key

#    --text --verbose --agree-tos \
#    --email orisventus@gmail.com \
#    --server https://acme-v01.api.letsencrypt.org/directory \
#    --rsa-key-size 4096 \
#    --renew-by-default --standalone-supported-challenges http-01 \
#    --key-path=/nginx-ssl/ssl_certificate_key.key \
#    --cert-path=/nginx-ssl/ssl_certificate.crt \
#    --webroot=/var/www/example \
#    -d app1.nadzorro.tk 
