-- Выполняется Postgres-ом автоматически при ПЕРВОМ старте контейнера:
-- создаёт рядом с test_db базу lab3 с маленьким набором данных для Лабы 3.
CREATE DATABASE lab3;
\connect lab3
\i /lab3/lab3.sql
