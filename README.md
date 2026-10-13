# База данных «Студенческая практика» (PostgreSQL)

Учебная база данных с кафедрами КГУ, преподавателями, костромскими IT-компаниями, договорами, распределением практики и оценками студентов.

## 🚀 Быстрый старт (для вас и друзей)

1. Установите [Docker Desktop](https://www.docker.com/products/docker-desktop/).
2. Склонируйте репозиторий и перейдите в папку:
   ```bash
   git clone <URL_РЕПОЗИТОРИЯ>
   cd students_practice_db
   ```
3. Запустите базу данных:
   ```bash
   docker compose up -d
   ```
База автоматически поднимется и наполнится всеми данными из `schema_and_data.sql`.
Рядом автоматически создастся вторая база **`lab3`** — маленький набор данных для Лабы 3 (см. ниже).

---

## 🔌 Подключение (в TablePlus, DBeaver, DataGrip, VSCode)

* **Host:** `localhost` (или `127.0.0.1`)
* **Port:** `5434`
* **Database:** `test_db`
* **Username:** `postgres`
* **Password:** `postgres`
* **SSL mode:** `DISABLE`

---

## 🔄 Как работать в команде через Git

### 1. Если ВЫ изменили данные в базе (через TablePlus/SQL) и хотите поделиться:
```bash
./export.sh
git commit -am "добавил новые записи / изменил схему"
git push
```
Скрипт `./export.sh` сам сохранит всё актуальное состояние базы в `schema_and_data.sql`.

### 2. Если ДРУГ запушил изменения, а вам нужно получить их в свою базу:
```bash
git pull
./import.sh
```
Скрипт `./import.sh` мгновенно накатит обновленный SQL в вашу базу.

---

## 🧪 Лаба 3 — база `lab3`

Отдельная база с маленьким набором данных (8 студентов, 11 мест, 12 заявок), в котором есть все ситуации для запроса Лабы 3.
Описание сценариев и ожидаемых ответов — в [Лаба3_сценарии.md](Лаба3_сценарии.md).

Подключение: всё как выше, только **Database:** `lab3`.

* При **первом** `docker compose up -d` база `lab3` создаётся сама.
* Если база у вас уже была поднята раньше (или вы хотите сбросить `lab3` к исходному виду):
  ```bash
  ./lab3.sh
  ```
  На Windows без bash:
  ```bash
  docker exec students_db psql -U postgres -c "DROP DATABASE IF EXISTS lab3" -c "CREATE DATABASE lab3"
  docker exec -i students_db psql -U postgres -d lab3 < lab3.sql
  ```
