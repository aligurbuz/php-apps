# Php Applications with Docker
You can find all the requirements you can use for your php applications in this repo.
You can run and manage your php applications. All you have to do is have a computer with the docker loaded.

![alt text](https://i.ibb.co/LzSs7g6/l1.png)

# Installation

```bash
$ git clone https://github.com/aligurbuz/php-apps.git
$ cd php-apps
$ docker-compose up -d

```

# Open the browser

> localhost/info.php


# Laravel Installation

```bash
$ docker exec -it php-app /bin/bash
$ git clone https://github.com/laravel/laravel.git yourProject
$ cd yourProject
$ composer install
$ mv .env.example .env
$ php artisan key:generate
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

# What does it have as a database?
There are 2 powerful databases that you can use as a relational database.Postgresql is loaded with the latest tag.
Mysql database 8.0 is installed.
Nosql, which you can use in Mongodb, comes loaded as data storage.
![alt text](https://s3.amazonaws.com/download.retrospect.com/site/blog/database_protection_778.jpg)

# What are the features of the repository

- [Php:8.0+Fpm]()
- [Mysql:8.0]()
- [PostgreSQL:latest]()
- [Nginx:latest]()
- [ElasticSearch:7.2.0]()
- [Redis]()
- [Mongodb]() 
- [Soap]() 
- [Composer]() 
- [Git]()
