#!/bin/bash
set -e
echo "🔄 Накатываем изменения из schema_and_data.sql в базу..."
CONTAINER="students_db"
if ! docker ps --format '{{.Names}}' | grep -q "^students_db$"; then
    if docker ps --format '{{.Names}}' | grep -q "^postgres_test$"; then
        CONTAINER="postgres_test"
    else
        echo "❌ Ошибка: контейнер PostgreSQL не запущен (запустите 'docker compose up -d')"
        exit 1
    fi
fi

cat schema_and_data.sql | docker exec -i "$CONTAINER" psql -U postgres -d test_db
echo "✅ База данных успешно синхронизирована с файлом из Git!"
