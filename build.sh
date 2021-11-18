#!/bin/bash
echo "|-----------BUILDING DOCKER CONTAINERS-----------|"
cd environment && docker-compose up -d
echo "|-----------CREATING LARAVEL STORAGE LINK-----------|"
docker-compose exec www php open-library/artisan storage:link
echo "|-----------EXECUTE DB MIGRATIONS-----------|"
docker-compose exec www php open-library/artisan migrate:fresh --seed
echo "|-----------ADD PERMISSIONS FOR STORAGE DIRECTORY-----------|"
chmod -R 777 ../www/open-library/storage
