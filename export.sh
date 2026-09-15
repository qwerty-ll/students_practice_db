#!/bin/bash
set -e
echo "📦 Экспортируем актуальное состояние базы данных..."
# Проверяем, какой контейнер запущен (students_db или postgres_test)
CONTAINER="students_db"
if ! docker ps --format '{{.Names}}' | grep -q "^students_db$"; then
    if docker ps --format '{{.Names}}' | grep -q "^postgres_test$"; then
        CONTAINER="postgres_test"
    else
        echo "❌ Ошибка: контейнер PostgreSQL не запущен (запустите 'docker compose up -d')"
        exit 1
    fi
fi

docker exec "$CONTAINER" pg_dump -U postgres -d test_db --clean --if-exists --inserts > schema_and_data.sql
echo "✅ База успешно выгружена в schema_and_data.sql!"
echo "👉 Теперь можно сделать: git add schema_and_data.sql && git commit -m 'обновил данные' && git push"
