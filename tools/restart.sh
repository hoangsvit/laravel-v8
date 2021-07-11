#!/bin/bash

cd ..

## migrate
docker-compose exec app composer install
docker-compose exec app php artisan migrate
