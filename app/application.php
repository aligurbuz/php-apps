#!/usr/bin/env php
<?php

if(!isset($argv[1])) exit();

if(file_exists('/var/www/html/app/'.$argv[1].'/artisan')){
    exit();
}

exec('cd /var/www/html/app && git clone https://github.com/aligurbuz/laravel-api.git '.$argv[1]);
exec('cd /var/www/html/app/'.$argv[1].' && composer install && mv .env.example .env && chmod -R 777 storage && php artisan key:generate && php artisan name '.$argv[1].' && php artisan migrate && php artisan passport:install && php artisan permission && php artisan supervisor');
