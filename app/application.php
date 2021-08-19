#!/usr/bin/env php
<?php

exec('cd /var/www/html && chmod +x laravel.sh && ./laravel.sh');
exec('cd /var/www/html/app/api && mv .env.example .env && chmod -R 777 storage && php artisan key:generate && php artisan migrate && php artisan passport:install && php artisan permission');
