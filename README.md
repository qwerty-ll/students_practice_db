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
