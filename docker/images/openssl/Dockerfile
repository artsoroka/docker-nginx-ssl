FROM alpine:3.4

RUN apk --update add openssl ca-certificates

CMD openssl req \
    -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /nginx-ssl/ssl_certificate_key.key \
    -out /nginx-ssl/ssl_certificate.crt \
    -subj "/C=US/ST=New York/L=Brooklyn/O=Example Brooklyn Company/CN=YOURDOMAIN.EXAMPLE"
#    openssl dhparam \
#    -out /nginx-ssl/dhparam.pem 2048
