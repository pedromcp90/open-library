#!/bin/bash
cd environment && docker-compose up -d && docker-compose exec www php open-library/artisan migrate:fresh --seed