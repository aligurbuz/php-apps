# Php Applications with Docker
You can find all the requirements you can use for your php applications in this repo.
You can run and manage your php applications. All you have to do is have a computer with the docker loaded.

![alt text](https://dev-to-uploads.s3.amazonaws.com/i/wmxvp6ty4zl8c1dahu43.png)

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

![alt text](https://i.ibb.co/gdKJtxs/Postgresqlvs-Mysqljpg1559294630.jpg)

# What does it have as a Nosql?
Redis is an open source (BSD licensed), in-memory data structure store, used as a database, cache, and message broker. Redis provides data structures such as strings, hashes, lists, sets, sorted sets with range queries, bitmaps, hyperloglogs, geospatial indexes, and streams. Redis has built-in replication, Lua scripting, LRU eviction, transactions, and different levels of on-disk persistence, and provides high availability via Redis Sentinel and automatic partitioning with Redis Cluster

MongoDB is a document database, which means it stores data in JSON-like documents. We believe this is the most natural way to think about data, and is much more expressive and powerful than the traditional row/column model.

![alt text](https://i.ibb.co/KFVXCT1/redis-VS-Mongo-DB.jpg)

# What are the features of the repository

- [Php:8.0+Fpm]()
- [Mysql:8.0]()
- [PostgreSQL:latest]()
- [Nginx:latest]()
- [ElasticSearch:7.2.0]()
- [RabbitMQ:3]()
- [Redis]()
- [Mongodb]() 
- [Soap]() 
- [Composer]() 
- [Git]()
