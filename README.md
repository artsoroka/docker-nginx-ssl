
Docker nginx openssl certbot 

An example project with dockerized node app is running behind nginx and having `https` connection backed up by [openssl](https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-apache-in-ubuntu-16-04) or  [certbot](https://certbot.eff.org) 

### Requirments 

- Docker
- Docker Compose 
- Git 

### Try it out 
Copy repo and ```cd``` into it 
```sh
$ git clone https://github.com/artsoroka/docker-nginx-ssl 
$ cd docker-nginx-ssl 
```

Create `openssl` certificates first 

```sh
docker-compose up openssl 
```
This command will create certificates in `docker/volumes/certs` which will be used by `nginx`. Now you can fire up server and `node` app 
```sh
$ docker-compose up -d nginx node
```

Go ahead to `https://yourwebsite`, probably, you'll see a browser warning about self signed certificates, but that's ok 

Now update `docker-compose.yml` file, set `DOMAIN_NAME` to match your domain name 

```sh
$ docker-compose up certbot 
```
It will start certbot, pass a challenge and replace `openssl` certificates. You should restart `nginx` to apply changes 

```sh
$ docker-compose run nginx nginx -s reload 
```

