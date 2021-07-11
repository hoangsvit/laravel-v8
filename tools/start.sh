#!/bin/bash
cd ..
#docker run --rm -v "%cd%":/app composer install
## execute docker-compose up
docker-compose up -d --build
## migrate
docker-compose exec app composer install
docker-compose exec app php artisan migrate
docker-compose exec app php artisan passport:install
docker-compose exec app php artisan db:seed
