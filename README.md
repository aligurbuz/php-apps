# Php Applications with Docker
You can find all the requirements you can use for your php applications in this repo.
You can run and manage your php applications. All you have to do is have a computer with the docker loaded.

![alt text](https://opsnotice.xyz/content/images/2016/07/banner_lemp1-1.png)

# Installation

```bash
$ git clone https://github.com/aligurbuz/php-apps.git
$ cd php-apps
$ docker-compose up -d

```

# Open the browser

> localhost/info.php


<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

# Laravel Installation

```bash
$ docker exec -it php-app /bin/bash
$ git clone https://github.com/laravel/laravel.git yourProject
$ cd yourProject
$ composer install
$ mv .env.example .env
$ sudo chmod -R 777 storage
$ exit (leave from the container)

```

# Laravel Nginx Set up
Go to server/volumes/nginx.conf and then add the following code:

```bash
location /yourProject {
    try_files $uri $uri/ /yourProject/public/index.php$is_args$args;
    }

```
Then;

```bash
docker restart nginx-app

```

# Ready Your Laravel Application (Go to browser)
```bash
localhost/yourProject/public/

```

# What are the features of the repository

- [Php:8.0+Fpm]()
- [Mysql:8.0]()
- [Nginx:latest]()
- [ElasticSearch:7.2.0]()
- [Redis]()
- [Mongodb]() 
- [Soap]() 
- [Composer]() 
- [Git]()
