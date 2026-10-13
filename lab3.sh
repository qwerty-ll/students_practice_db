#!/bin/bash
set -e
echo "🧪 Пересоздаём базу lab3 из lab3.sql..."
CONTAINER="students_db"
if ! docker ps --format '{{.Names}}' | grep -q "^students_db$"; then
    echo "❌ Ошибка: контейнер students_db не запущен (запустите 'docker compose up -d')"
    exit 1
fi

docker exec "$CONTAINER" psql -U postgres -q -c 'DROP DATABASE IF EXISTS lab3' -c 'CREATE DATABASE lab3'
docker exec -i "$CONTAINER" psql -U postgres -d lab3 -q -v ON_ERROR_STOP=1 < lab3.sql > /dev/null
echo "✅ База lab3 готова (порт 5434, база lab3, postgres/postgres)"
