--
-- PostgreSQL database dump
--

\restrict EtcSEyKvMpmFMrgCfbVijtMOP50zS1nnnRfesuWeIbl8t3FTRDaLIHJ7MaENnIs

-- Dumped from database version 16.15
-- Dumped by pg_dump version 16.15

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public."Студент" DROP CONSTRAINT IF EXISTS "FK_Студент_Группа";
ALTER TABLE IF EXISTS ONLY public."Руководитель_от_университета" DROP CONSTRAINT IF EXISTS "FK_Руководитель_от_университета_До";
ALTER TABLE IF EXISTS ONLY public."Результат" DROP CONSTRAINT IF EXISTS "FK_Результат_Практика_студента";
ALTER TABLE IF EXISTS ONLY public."Практика_студента" DROP CONSTRAINT IF EXISTS "FK_Практика_студента_Руководитель_";
ALTER TABLE IF EXISTS ONLY public."Практика_студента" DROP CONSTRAINT IF EXISTS "FK_Практика_студента_Заявка_на_прак";
ALTER TABLE IF EXISTS ONLY public."Практика" DROP CONSTRAINT IF EXISTS "FK_Практика_Направление_подготовки";
ALTER TABLE IF EXISTS ONLY public."Практика" DROP CONSTRAINT IF EXISTS "FK_Практика_Вид_практики";
ALTER TABLE IF EXISTS ONLY public."Оценка_выполнения" DROP CONSTRAINT IF EXISTS "FK_Оценка_выполнения_Компетенция";
ALTER TABLE IF EXISTS ONLY public."Оценка_выполнения" DROP CONSTRAINT IF EXISTS "FK_Оценка_выполнения_Задание";
ALTER TABLE IF EXISTS ONLY public."Компетенция" DROP CONSTRAINT IF EXISTS "FK_Компетенция_Тип_компетенции";
ALTER TABLE IF EXISTS ONLY public."Компетенция" DROP CONSTRAINT IF EXISTS "FK_Компетенция_Направление_подгото";
ALTER TABLE IF EXISTS ONLY public."Заявка_на_практику" DROP CONSTRAINT IF EXISTS "FK_Заявка_на_практику_Студент";
ALTER TABLE IF EXISTS ONLY public."Заявка_на_практику" DROP CONSTRAINT IF EXISTS "FK_Заявка_на_практику_Статус_заявки";
ALTER TABLE IF EXISTS ONLY public."Заявка_на_практику" DROP CONSTRAINT IF EXISTS "FK_Заявка_на_практику_Доступные_мес";
ALTER TABLE IF EXISTS ONLY public."Задание" DROP CONSTRAINT IF EXISTS "FK_Задание_Статус_задания";
ALTER TABLE IF EXISTS ONLY public."Задание" DROP CONSTRAINT IF EXISTS "FK_Задание_Практика_студента";
ALTER TABLE IF EXISTS ONLY public."Журнал_инцидентов" DROP CONSTRAINT IF EXISTS "FK_Журнал_инцидентов_Практика_студ";
ALTER TABLE IF EXISTS ONLY public."Доступные_места" DROP CONSTRAINT IF EXISTS "FK_Доступные_места_Практика";
ALTER TABLE IF EXISTS ONLY public."Доступные_места" DROP CONSTRAINT IF EXISTS "FK_Доступные_места_Организация_пар";
ALTER TABLE IF EXISTS ONLY public."Доступные_места" DROP CONSTRAINT IF EXISTS "FK_Доступные_места_Должность_вакан";
ALTER TABLE IF EXISTS ONLY public."Договор" DROP CONSTRAINT IF EXISTS "FK_Договор_Тип_договора";
ALTER TABLE IF EXISTS ONLY public."Договор" DROP CONSTRAINT IF EXISTS "FK_Договор_Статус_договора";
ALTER TABLE IF EXISTS ONLY public."Договор" DROP CONSTRAINT IF EXISTS "FK_Договор_Организация_партнер";
ALTER TABLE IF EXISTS ONLY public."Группа" DROP CONSTRAINT IF EXISTS "FK_Группа_Направление_подготовки";
ALTER TABLE IF EXISTS ONLY public."Тип_компетенции" DROP CONSTRAINT IF EXISTS "Тип_компетенции_pkey";
ALTER TABLE IF EXISTS ONLY public."Тип_договора" DROP CONSTRAINT IF EXISTS "Тип_договора_pkey";
ALTER TABLE IF EXISTS ONLY public."Студент" DROP CONSTRAINT IF EXISTS "Студент_pkey";
ALTER TABLE IF EXISTS ONLY public."Статус_заявки" DROP CONSTRAINT IF EXISTS "Статус_заявки_pkey";
ALTER TABLE IF EXISTS ONLY public."Статус_задания" DROP CONSTRAINT IF EXISTS "Статус_задания_pkey";
ALTER TABLE IF EXISTS ONLY public."Статус_договора" DROP CONSTRAINT IF EXISTS "Статус_договора_pkey";
ALTER TABLE IF EXISTS ONLY public."Руководитель_от_университета" DROP CONSTRAINT IF EXISTS "Руководитель_от_университета_pkey";
ALTER TABLE IF EXISTS ONLY public."Результат" DROP CONSTRAINT IF EXISTS "Результат_pkey";
ALTER TABLE IF EXISTS ONLY public."Практика_студента" DROP CONSTRAINT IF EXISTS "Практика_студента_pkey";
ALTER TABLE IF EXISTS ONLY public."Практика" DROP CONSTRAINT IF EXISTS "Практика_pkey";
ALTER TABLE IF EXISTS ONLY public."Оценка_выполнения" DROP CONSTRAINT IF EXISTS "Оценка_выполнения_pkey";
ALTER TABLE IF EXISTS ONLY public."Организация_партнер" DROP CONSTRAINT IF EXISTS "Организация_партнер_pkey";
ALTER TABLE IF EXISTS ONLY public."Направление_подготовки" DROP CONSTRAINT IF EXISTS "Направление_подготовки_pkey";
ALTER TABLE IF EXISTS ONLY public."Компетенция" DROP CONSTRAINT IF EXISTS "Компетенция_pkey";
ALTER TABLE IF EXISTS ONLY public."Заявка_на_практику" DROP CONSTRAINT IF EXISTS "Заявка_на_практику_pkey";
ALTER TABLE IF EXISTS ONLY public."Задание" DROP CONSTRAINT IF EXISTS "Задание_pkey";
ALTER TABLE IF EXISTS ONLY public."Журнал_инцидентов" DROP CONSTRAINT IF EXISTS "Журнал_инцидентов_pkey";
ALTER TABLE IF EXISTS ONLY public."Доступные_места" DROP CONSTRAINT IF EXISTS "Доступные_места_pkey";
ALTER TABLE IF EXISTS ONLY public."Должность_руководителя" DROP CONSTRAINT IF EXISTS "Должность_руководителя_pkey";
ALTER TABLE IF EXISTS ONLY public."Должность_вакансии" DROP CONSTRAINT IF EXISTS "Должность_вакансии_pkey";
ALTER TABLE IF EXISTS ONLY public."Договор" DROP CONSTRAINT IF EXISTS "Договор_pkey";
ALTER TABLE IF EXISTS ONLY public."Группа" DROP CONSTRAINT IF EXISTS "Группа_pkey";
ALTER TABLE IF EXISTS ONLY public."Вид_практики" DROP CONSTRAINT IF EXISTS "Вид_практики_pkey";
ALTER TABLE IF EXISTS ONLY public."Test" DROP CONSTRAINT IF EXISTS "Test_pkey";
DROP TABLE IF EXISTS public."Тип_компетенции";
DROP TABLE IF EXISTS public."Тип_договора";
DROP TABLE IF EXISTS public."Студент";
DROP TABLE IF EXISTS public."Статус_заявки";
DROP TABLE IF EXISTS public."Статус_задания";
DROP TABLE IF EXISTS public."Статус_договора";
DROP TABLE IF EXISTS public."Руководитель_от_университета";
DROP TABLE IF EXISTS public."Результат";
DROP TABLE IF EXISTS public."Практика_студента";
DROP TABLE IF EXISTS public."Практика";
DROP TABLE IF EXISTS public."Оценка_выполнения";
DROP TABLE IF EXISTS public."Организация_партнер";
DROP TABLE IF EXISTS public."Направление_подготовки";
DROP TABLE IF EXISTS public."Компетенция";
DROP TABLE IF EXISTS public."Заявка_на_практику";
DROP TABLE IF EXISTS public."Задание";
DROP TABLE IF EXISTS public."Журнал_инцидентов";
DROP TABLE IF EXISTS public."Доступные_места";
DROP TABLE IF EXISTS public."Должность_руководителя";
DROP TABLE IF EXISTS public."Должность_вакансии";
DROP TABLE IF EXISTS public."Договор";
DROP TABLE IF EXISTS public."Группа";
DROP TABLE IF EXISTS public."Вид_практики";
DROP TABLE IF EXISTS public."Test";
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Test; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Test" (
    "Статус" character varying(50) NOT NULL
);


ALTER TABLE public."Test" OWNER TO postgres;

--
-- Name: Вид_практики; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Вид_практики" (
    "Id_вида_практики" integer NOT NULL,
    "Наименование" character varying(100) NOT NULL
);


ALTER TABLE public."Вид_практики" OWNER TO postgres;

--
-- Name: Вид_практики_Id_вида_практики_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Вид_практики" ALTER COLUMN "Id_вида_практики" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Вид_практики_Id_вида_практики_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Группа; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Группа" (
    "Номер_группы" character varying(20) NOT NULL,
    "Название" character varying(50) NOT NULL,
    "Курс" smallint NOT NULL,
    "Форма_обучения" character varying(50) NOT NULL,
    "Код_направления" character varying(20) NOT NULL
);


ALTER TABLE public."Группа" OWNER TO postgres;

--
-- Name: Договор; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Договор" (
    "Номер_договора" character varying(50) NOT NULL,
    "Дата_подписания" date NOT NULL,
    "Срок_действия" date,
    "Id_типа_договора" integer NOT NULL,
    "Id_статуса_договора" integer NOT NULL,
    "Наименование_организации" character varying(100) NOT NULL
);


ALTER TABLE public."Договор" OWNER TO postgres;

--
-- Name: Должность_вакансии; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Должность_вакансии" (
    "Id_должности" integer NOT NULL,
    "Название" character varying(50) NOT NULL
);


ALTER TABLE public."Должность_вакансии" OWNER TO postgres;

--
-- Name: Должность_вакансии_Id_должности_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Должность_вакансии" ALTER COLUMN "Id_должности" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Должность_вакансии_Id_должности_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Должность_руководителя; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Должность_руководителя" (
    "Id_должности_руководителя" integer NOT NULL,
    "Название" character(100) NOT NULL
);


ALTER TABLE public."Должность_руководителя" OWNER TO postgres;

--
-- Name: Должность_руков_Id_должности_рук_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Должность_руководителя" ALTER COLUMN "Id_должности_руководителя" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Должность_руков_Id_должности_рук_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Доступные_места; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Доступные_места" (
    "Id_доступного_места" integer NOT NULL,
    "Описание_задач" character varying,
    "Кол-во_мест" integer NOT NULL,
    "Дата_начала_подачи_заявок" date NOT NULL,
    "Дата_окончания_подачи_заявок" date NOT NULL,
    "Требуемый_профиль" character varying(100),
    "Учебный_год" character varying(20) NOT NULL,
    "Id_должности" integer NOT NULL,
    "Наименование_организации" character varying(100) NOT NULL,
    "Id_практики" integer NOT NULL
);


ALTER TABLE public."Доступные_места" OWNER TO postgres;

--
-- Name: Доступные_места_Id_доступного_ме_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Доступные_места" ALTER COLUMN "Id_доступного_места" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Доступные_места_Id_доступного_ме_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Журнал_инцидентов; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Журнал_инцидентов" (
    "Id_журнала" integer NOT NULL,
    "Дата_инцидента" date NOT NULL,
    "Описание_нарушения" character varying NOT NULL,
    "Id_практики_студента" integer
);


ALTER TABLE public."Журнал_инцидентов" OWNER TO postgres;

--
-- Name: Журнал_инцидентов_Id_журнала_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Журнал_инцидентов" ALTER COLUMN "Id_журнала" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Журнал_инцидентов_Id_журнала_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Задание; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Задание" (
    "Id_задания" integer NOT NULL,
    "Постановка_задачи" character varying NOT NULL,
    "Id_практики_студента" integer NOT NULL,
    "Id_статуса" integer NOT NULL
);


ALTER TABLE public."Задание" OWNER TO postgres;

--
-- Name: Задание_Id_задания_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Задание" ALTER COLUMN "Id_задания" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Задание_Id_задания_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Заявка_на_практику; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Заявка_на_практику" (
    "Id_заявки" integer NOT NULL,
    "Дата_подачи" date NOT NULL,
    "Комментарий" character varying,
    "Id_статуса_заявки" integer NOT NULL,
    "Id_доступного_места" integer NOT NULL,
    "Id_студента" integer NOT NULL
);


ALTER TABLE public."Заявка_на_практику" OWNER TO postgres;

--
-- Name: Заявка_на_практику_Id_заявки_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Заявка_на_практику" ALTER COLUMN "Id_заявки" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Заявка_на_практику_Id_заявки_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Компетенция; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Компетенция" (
    "Код_компетенции" character varying(20) NOT NULL,
    "Описание" character varying NOT NULL,
    "Id_типа_компетенции" integer NOT NULL,
    "Код_направления" character varying(20) NOT NULL
);


ALTER TABLE public."Компетенция" OWNER TO postgres;

--
-- Name: Направление_подготовки; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Направление_подготовки" (
    "Код_направления" character varying(20) NOT NULL,
    "Наименованние_программы" character varying(150) NOT NULL
);


ALTER TABLE public."Направление_подготовки" OWNER TO postgres;

--
-- Name: Организация_партнер; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Организация_партнер" (
    "Наименование_организации" character varying(100) NOT NULL,
    "Адрес" character varying(200) NOT NULL,
    "ИНН" character varying(12) NOT NULL,
    "КПП" character varying(9) NOT NULL,
    "Телефон" character varying(20) NOT NULL,
    "Фамилия_контакта" character varying(50) NOT NULL,
    "Имя_контакта" character varying(50) NOT NULL,
    "Отчество_контакта" character varying(50),
    "Статус_партнера" character varying(50) NOT NULL
);


ALTER TABLE public."Организация_партнер" OWNER TO postgres;

--
-- Name: Оценка_выполнения; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Оценка_выполнения" (
    "Id_задания" integer NOT NULL,
    "Код_компетенции" character varying(20) NOT NULL,
    "Оценка_компетенции" character varying(20)
);


ALTER TABLE public."Оценка_выполнения" OWNER TO postgres;

--
-- Name: Практика; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Практика" (
    "Id_практики" integer NOT NULL,
    "Номер_семестра" smallint NOT NULL,
    "Кол-во_часов" integer NOT NULL,
    "Код_направления" character varying(20) NOT NULL,
    "Id_вида_практики" integer NOT NULL
);


ALTER TABLE public."Практика" OWNER TO postgres;

--
-- Name: Практика_Id_практики_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Практика" ALTER COLUMN "Id_практики" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Практика_Id_практики_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Практика_студента; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Практика_студента" (
    "Id_практики_студента" integer NOT NULL,
    "Фактические_сроки" character varying(100) NOT NULL,
    "Фактический_адрес" character varying(200) NOT NULL,
    "Фамилия_рук_орг" character varying(50),
    "Имя_рук_орг" character varying(50),
    "Отчество_рук_орг" character varying(50),
    "Id_руководителя" integer NOT NULL,
    "Id_заявки" integer NOT NULL
);


ALTER TABLE public."Практика_студента" OWNER TO postgres;

--
-- Name: Практика_студен_Id_практики_студ_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Практика_студента" ALTER COLUMN "Id_практики_студента" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Практика_студен_Id_практики_студ_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Результат; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Результат" (
    "Id_результата" integer NOT NULL,
    "Характеристика" character varying,
    "Итоговая_оценка" character varying(20) NOT NULL,
    "Id_практики_студента" integer NOT NULL
);


ALTER TABLE public."Результат" OWNER TO postgres;

--
-- Name: Результат_Id_результата_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Результат" ALTER COLUMN "Id_результата" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Результат_Id_результата_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Руководитель_от_университета; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Руководитель_от_университета" (
    "Id_руководителя" integer NOT NULL,
    "Фамилия" character varying(50) NOT NULL,
    "Имя" character varying(50) NOT NULL,
    "Отчество" character varying(50),
    "Id_должности_руководителя" integer NOT NULL
);


ALTER TABLE public."Руководитель_от_университета" OWNER TO postgres;

--
-- Name: Руководитель_от__Id_руководителя_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Руководитель_от_университета" ALTER COLUMN "Id_руководителя" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Руководитель_от__Id_руководителя_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Статус_договора; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Статус_договора" (
    "Id_статуса_договора" integer NOT NULL,
    "Название" character varying(50) NOT NULL
);


ALTER TABLE public."Статус_договора" OWNER TO postgres;

--
-- Name: Статус_договора_Id_статуса_догов_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Статус_договора" ALTER COLUMN "Id_статуса_договора" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Статус_договора_Id_статуса_догов_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Статус_задания; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Статус_задания" (
    "Id_статуса" integer NOT NULL,
    "Наименование" character varying(50) NOT NULL
);


ALTER TABLE public."Статус_задания" OWNER TO postgres;

--
-- Name: Статус_задания_Id_статуса_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Статус_задания" ALTER COLUMN "Id_статуса" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Статус_задания_Id_статуса_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Статус_заявки; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Статус_заявки" (
    "Id_статуса_заявки" integer NOT NULL,
    "Наименование" character varying(50) NOT NULL
);


ALTER TABLE public."Статус_заявки" OWNER TO postgres;

--
-- Name: Статус_заявки_Id_статуса_заявки_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Статус_заявки" ALTER COLUMN "Id_статуса_заявки" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Статус_заявки_Id_статуса_заявки_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Студент; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Студент" (
    "Id_студента" integer NOT NULL,
    "Фамилия" character varying(50) NOT NULL,
    "Имя" character varying(50) NOT NULL,
    "Отчество" character varying(50),
    "Дата_рождения" date NOT NULL,
    "Номер_группы" character varying(20) NOT NULL
);


ALTER TABLE public."Студент" OWNER TO postgres;

--
-- Name: Студент_Id_студента_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Студент" ALTER COLUMN "Id_студента" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Студент_Id_студента_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Тип_договора; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Тип_договора" (
    "Id_типа_договора" integer NOT NULL,
    "Название" character varying(50) NOT NULL
);


ALTER TABLE public."Тип_договора" OWNER TO postgres;

--
-- Name: Тип_договора_Id_типа_договора_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Тип_договора" ALTER COLUMN "Id_типа_договора" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Тип_договора_Id_типа_договора_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Тип_компетенции; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Тип_компетенции" (
    "Id_типа_компетенции" integer NOT NULL,
    "Название" character varying(50) NOT NULL
);


ALTER TABLE public."Тип_компетенции" OWNER TO postgres;

--
-- Name: Тип_компетенции_Id_типа_компетен_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Тип_компетенции" ALTER COLUMN "Id_типа_компетенции" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Тип_компетенции_Id_типа_компетен_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: Test; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Test" VALUES ('??????');


--
-- Data for Name: Вид_практики; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Вид_практики" VALUES (1, 'Учебная');
INSERT INTO public."Вид_практики" VALUES (2, 'Производственная');
INSERT INTO public."Вид_практики" VALUES (3, 'Преддипломная');


--
-- Data for Name: Группа; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Группа" VALUES ('23-ИСбо-2', 'Информационные системы 2', 2, 'Очная', '09.03.02');
INSERT INTO public."Группа" VALUES ('24-ИСбо-1', 'Информационные системы 1', 1, 'Очная', '09.03.02');
INSERT INTO public."Группа" VALUES ('26-ИСбо-1', 'Информационные системы 1', 1, 'Очная', '09.03.02');
INSERT INTO public."Группа" VALUES ('26-ИСбо-2', 'Информационные системы 2', 1, 'Очная', '09.03.02');
INSERT INTO public."Группа" VALUES ('26-ИСбо-3', 'Информационные системы 3', 1, 'Очная', '09.03.02');
INSERT INTO public."Группа" VALUES ('26-ИСбо-4', 'Информационные системы 4', 1, 'Очная', '09.03.02');
INSERT INTO public."Группа" VALUES ('26-ПМбо-1', 'Прикладная математика 1', 1, 'Очная', '01.03.02');
INSERT INTO public."Группа" VALUES ('26-ИБбо-1', 'Информационная безопасность 1', 1, 'Очная', '10.03.01');
INSERT INTO public."Группа" VALUES ('25-ИСбо-1', 'Информационные системы 1', 2, 'Очная', '09.03.02');
INSERT INTO public."Группа" VALUES ('25-ИСбо-2', 'Информационные системы 2', 2, 'Очная', '09.03.02');
INSERT INTO public."Группа" VALUES ('25-ИСбо-3', 'Информационные системы 3', 2, 'Очная', '09.03.02');
INSERT INTO public."Группа" VALUES ('25-ПМбо-1', 'Прикладная математика 1', 2, 'Очная', '01.03.02');
INSERT INTO public."Группа" VALUES ('25-ИБбо-1', 'Информационная безопасность 1', 2, 'Очная', '10.03.01');


--
-- Data for Name: Договор; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Договор" VALUES ('Д-100', '2024-01-15', '2025-12-31', 2, 1, 'ООО Тензор');
INSERT INTO public."Договор" VALUES ('Д-101', '2024-05-10', '2024-08-31', 1, 2, 'АО СмартСофт');
INSERT INTO public."Договор" VALUES ('Д-102', '2024-02-01', '2026-12-31', 2, 1, 'ООО ЮвелирСофт');
INSERT INTO public."Договор" VALUES ('Д-103', '2024-03-15', '2027-06-30', 1, 1, 'ООО Девелоника');
INSERT INTO public."Договор" VALUES ('Д-104', '2024-04-10', '2026-12-31', 2, 1, 'АО СКБТ');
INSERT INTO public."Договор" VALUES ('Д-105', '2024-01-20', '2027-12-31', 1, 1, 'ПАО Сбербанк');


--
-- Data for Name: Должность_вакансии; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Должность_вакансии" VALUES (1, 'Младший программист');
INSERT INTO public."Должность_вакансии" VALUES (2, 'Специалист по базам данных');
INSERT INTO public."Должность_вакансии" VALUES (3, 'Системный аналитик');
INSERT INTO public."Должность_вакансии" VALUES (4, 'Инженер по тестированию (QA)');
INSERT INTO public."Должность_вакансии" VALUES (5, 'Специалист по информационной безопасности');
INSERT INTO public."Должность_вакансии" VALUES (6, 'Младший веб-разработчик');
INSERT INTO public."Должность_вакансии" VALUES (7, 'Младший системный администратор');
INSERT INTO public."Должность_вакансии" VALUES (8, 'Аналитик данных');


--
-- Data for Name: Должность_руководителя; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Должность_руководителя" VALUES (1, 'Доцент                                                                                              ');
INSERT INTO public."Должность_руководителя" VALUES (2, 'Профессор                                                                                           ');
INSERT INTO public."Должность_руководителя" VALUES (3, 'Старший преподаватель                                                                               ');
INSERT INTO public."Должность_руководителя" VALUES (4, 'Заведующий кафедрой                                                                                 ');
INSERT INTO public."Должность_руководителя" VALUES (5, 'Ассистент                                                                                           ');


--
-- Data for Name: Доступные_места; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Доступные_места" VALUES (1, 'Разработка запросов к SQL', 3, '2025-04-01', '2025-05-01', 'Базы данных', '2024/2025', 2, 'ООО Тензор', 1);
INSERT INTO public."Доступные_места" VALUES (2, 'Написание кода на Python', 2, '2025-04-10', '2025-05-15', 'Разработка ПО', '2024/2025', 1, 'АО СмартСофт', 2);
INSERT INTO public."Доступные_места" VALUES (3, 'Разработка бэкенд-сервисов на Python', 10, '2026-03-01', '2026-05-15', 'Разработка ПО', '2025/2026', 1, 'ООО Тензор', 1);
INSERT INTO public."Доступные_места" VALUES (4, 'Системный анализ бизнес-процессов', 8, '2026-03-01', '2026-05-15', 'Системный анализ', '2025/2026', 3, 'ООО Тензор', 1);
INSERT INTO public."Доступные_места" VALUES (5, 'Аудит сетевых протоколов и безопасности', 6, '2026-03-01', '2026-05-15', 'Безопасность', '2025/2026', 5, 'ООО Тензор', 1);
INSERT INTO public."Доступные_места" VALUES (6, 'Разработка учетных систем на платформе 1C/Web', 12, '2026-03-01', '2026-05-15', 'Разработка ПО', '2025/2026', 1, 'ООО ЮвелирСофт', 1);
INSERT INTO public."Доступные_места" VALUES (7, 'Проектирование и оптимизация СУБД', 8, '2026-03-01', '2026-05-15', 'Базы данных', '2025/2026', 2, 'ООО ЮвелирСофт', 1);
INSERT INTO public."Доступные_места" VALUES (8, 'Фронтенд разработка корпоративных порталов', 6, '2026-03-01', '2026-05-15', 'Веб-разработка', '2025/2026', 6, 'ООО ЮвелирСофт', 1);
INSERT INTO public."Доступные_места" VALUES (9, 'Инженерная разработка программных сервисов', 15, '2026-03-01', '2026-05-15', 'Разработка ПО', '2025/2026', 1, 'ООО Девелоника', 1);
INSERT INTO public."Доступные_места" VALUES (10, 'Автоматизированное и ручное тестирование (QA)', 10, '2026-03-01', '2026-05-15', 'Тестирование', '2025/2026', 4, 'ООО Девелоника', 1);
INSERT INTO public."Доступные_места" VALUES (11, 'Проектирование пользовательских сценариев', 8, '2026-03-01', '2026-05-15', 'Системный анализ', '2025/2026', 3, 'ООО Девелоника', 1);
INSERT INTO public."Доступные_места" VALUES (12, 'Встраиваемое и прикладное ПО', 10, '2026-03-01', '2026-05-15', 'Разработка ПО', '2025/2026', 1, 'АО СКБТ', 1);
INSERT INTO public."Доступные_места" VALUES (13, 'Администрирование серверных СУБД', 8, '2026-03-01', '2026-05-15', 'Базы данных', '2025/2026', 2, 'АО СКБТ', 1);
INSERT INTO public."Доступные_места" VALUES (14, 'Сетевое администрирование инфраструктуры', 5, '2026-03-01', '2026-05-15', 'Системное администрирование', '2025/2026', 7, 'АО СКБТ', 1);
INSERT INTO public."Доступные_места" VALUES (15, 'Финтех сервисы и алгоритмы', 15, '2026-03-01', '2026-05-15', 'Разработка ПО', '2025/2026', 1, 'ПАО Сбербанк', 1);
INSERT INTO public."Доступные_места" VALUES (16, 'Кибербезопасность банковских сервисов', 12, '2026-03-01', '2026-05-15', 'Безопасность', '2025/2026', 5, 'ПАО Сбербанк', 1);
INSERT INTO public."Доступные_места" VALUES (17, 'Интеллектуальный анализ больших данных', 10, '2026-03-01', '2026-05-15', 'Аналитика', '2025/2026', 8, 'ПАО Сбербанк', 1);
INSERT INTO public."Доступные_места" VALUES (18, 'Создание микросервисов для веб-приложений', 8, '2026-03-01', '2026-05-15', 'Разработка ПО', '2025/2026', 1, 'АО СмартСофт', 1);
INSERT INTO public."Доступные_места" VALUES (19, 'Веб-интерфейсы на React', 6, '2026-03-01', '2026-05-15', 'Веб-разработка', '2025/2026', 6, 'АО СмартСофт', 1);
INSERT INTO public."Доступные_места" VALUES (20, 'Математическое моделирование и аналитика', 15, '2026-03-01', '2026-05-15', 'Прикладная математика', '2025/2026', 8, 'ООО Тензор', 3);
INSERT INTO public."Доступные_места" VALUES (21, 'Финансовое моделирование и статистика', 15, '2026-03-01', '2026-05-15', 'Прикладная математика', '2025/2026', 8, 'ПАО Сбербанк', 3);
INSERT INTO public."Доступные_места" VALUES (22, 'Алгоритмизация сложных вычислительных задач', 10, '2026-03-01', '2026-05-15', 'Прикладная математика', '2025/2026', 1, 'ООО Девелоника', 3);
INSERT INTO public."Доступные_места" VALUES (23, 'Анализ защищенности инфраструктуры', 15, '2026-03-01', '2026-05-15', 'Информационная безопасность', '2025/2026', 5, 'ПАО Сбербанк', 5);
INSERT INTO public."Доступные_места" VALUES (24, 'Защита облачных платформ и сервисов', 15, '2026-03-01', '2026-05-15', 'Информационная безопасность', '2025/2026', 5, 'ООО Тензор', 5);
INSERT INTO public."Доступные_места" VALUES (25, 'Информационная безопасность АСУ ТП', 10, '2026-03-01', '2026-05-15', 'Информационная безопасность', '2025/2026', 5, 'АО СКБТ', 5);


--
-- Data for Name: Журнал_инцидентов; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Журнал_инцидентов" VALUES (1, '2025-06-15', 'Опоздание на 2 часа', 3);
INSERT INTO public."Журнал_инцидентов" VALUES (2, '2026-07-03', 'Опоздание на общий инструктаж по охране труда на предприятии на 20 минут', 8);
INSERT INTO public."Журнал_инцидентов" VALUES (3, '2026-07-08', 'Уведомление о пропуске рабочего дня по причине болезни (предоставлена справка)', 14);
INSERT INTO public."Журнал_инцидентов" VALUES (4, '2026-07-11', 'Повторный перезапуск рабочего окружения из-за сбоя в локальной сети', 22);


--
-- Data for Name: Задание; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Задание" VALUES (1, 'Сложные запросы', 1, 2);
INSERT INTO public."Задание" VALUES (2, 'Схема БД', 2, 1);
INSERT INTO public."Задание" VALUES (3, 'Микросервис', 3, 3);
INSERT INTO public."Задание" VALUES (4, 'Тестирование БД', 4, 3);
INSERT INTO public."Задание" VALUES (5, 'Написать ТЗ', 5, 1);
INSERT INTO public."Задание" VALUES (6, 'Разработка модульных и интеграционных тестов для веб-сервиса', 6, 3);
INSERT INTO public."Задание" VALUES (7, 'Анализ требований и составление технического задания на разработку', 7, 3);
INSERT INTO public."Задание" VALUES (8, 'Разработка REST API микросервиса на Python/FastAPI', 7, 3);
INSERT INTO public."Задание" VALUES (9, 'Оптимизация сложных SQL-запросов и построение составных индексов', 8, 3);
INSERT INTO public."Задание" VALUES (10, 'Разработка REST API микросервиса на Python/FastAPI', 9, 3);
INSERT INTO public."Задание" VALUES (11, 'Разработка модульных и интеграционных тестов для веб-сервиса', 9, 3);
INSERT INTO public."Задание" VALUES (12, 'Разработка REST API микросервиса на Python/FastAPI', 10, 3);
INSERT INTO public."Задание" VALUES (13, 'Проектирование реляционной схемы базы данных для корпоративного учета', 10, 3);
INSERT INTO public."Задание" VALUES (14, 'Разработка REST API микросервиса на Python/FastAPI', 11, 3);
INSERT INTO public."Задание" VALUES (15, 'Интеграция клиентского приложения с сервисом авторизации по JWT', 12, 3);
INSERT INTO public."Задание" VALUES (16, 'Разработка модульных и интеграционных тестов для веб-сервиса', 13, 3);
INSERT INTO public."Задание" VALUES (17, 'Анализ требований и составление технического задания на разработку', 14, 3);
INSERT INTO public."Задание" VALUES (18, 'Анализ требований и составление технического задания на разработку', 15, 3);
INSERT INTO public."Задание" VALUES (19, 'Анализ требований и составление технического задания на разработку', 16, 3);
INSERT INTO public."Задание" VALUES (20, 'Разработка модульных и интеграционных тестов для веб-сервиса', 16, 3);
INSERT INTO public."Задание" VALUES (21, 'Разработка REST API микросервиса на Python/FastAPI', 17, 3);
INSERT INTO public."Задание" VALUES (22, 'Анализ требований и составление технического задания на разработку', 17, 3);
INSERT INTO public."Задание" VALUES (23, 'Проектирование реляционной схемы базы данных для корпоративного учета', 18, 3);
INSERT INTO public."Задание" VALUES (24, 'Анализ требований и составление технического задания на разработку', 18, 3);
INSERT INTO public."Задание" VALUES (25, 'Анализ требований и составление технического задания на разработку', 19, 3);
INSERT INTO public."Задание" VALUES (26, 'Интеграция клиентского приложения с сервисом авторизации по JWT', 19, 3);
INSERT INTO public."Задание" VALUES (27, 'Анализ требований и составление технического задания на разработку', 20, 3);
INSERT INTO public."Задание" VALUES (28, 'Оптимизация сложных SQL-запросов и построение составных индексов', 20, 3);
INSERT INTO public."Задание" VALUES (29, 'Интеграция клиентского приложения с сервисом авторизации по JWT', 21, 3);
INSERT INTO public."Задание" VALUES (30, 'Разработка REST API микросервиса на Python/FastAPI', 21, 3);
INSERT INTO public."Задание" VALUES (31, 'Оптимизация сложных SQL-запросов и построение составных индексов', 22, 3);
INSERT INTO public."Задание" VALUES (32, 'Анализ требований и составление технического задания на разработку', 23, 3);
INSERT INTO public."Задание" VALUES (33, 'Интеграция клиентского приложения с сервисом авторизации по JWT', 24, 3);
INSERT INTO public."Задание" VALUES (34, 'Разработка модульных и интеграционных тестов для веб-сервиса', 25, 3);
INSERT INTO public."Задание" VALUES (35, 'Проектирование реляционной схемы базы данных для корпоративного учета', 25, 3);
INSERT INTO public."Задание" VALUES (36, 'Проектирование реляционной схемы базы данных для корпоративного учета', 26, 3);
INSERT INTO public."Задание" VALUES (37, 'Разработка REST API микросервиса на Python/FastAPI', 27, 3);
INSERT INTO public."Задание" VALUES (38, 'Интеграция клиентского приложения с сервисом авторизации по JWT', 28, 3);
INSERT INTO public."Задание" VALUES (39, 'Проектирование реляционной схемы базы данных для корпоративного учета', 29, 3);
INSERT INTO public."Задание" VALUES (40, 'Разработка REST API микросервиса на Python/FastAPI', 29, 3);
INSERT INTO public."Задание" VALUES (41, 'Разработка REST API микросервиса на Python/FastAPI', 30, 3);
INSERT INTO public."Задание" VALUES (42, 'Анализ требований и составление технического задания на разработку', 30, 3);
INSERT INTO public."Задание" VALUES (43, 'Оптимизация сложных SQL-запросов и построение составных индексов', 31, 3);
INSERT INTO public."Задание" VALUES (44, 'Интеграция клиентского приложения с сервисом авторизации по JWT', 31, 3);
INSERT INTO public."Задание" VALUES (45, 'Оптимизация сложных SQL-запросов и построение составных индексов', 32, 3);
INSERT INTO public."Задание" VALUES (46, 'Разработка модульных и интеграционных тестов для веб-сервиса', 32, 3);
INSERT INTO public."Задание" VALUES (47, 'Проектирование реляционной схемы базы данных для корпоративного учета', 33, 3);
INSERT INTO public."Задание" VALUES (48, 'Интеграция клиентского приложения с сервисом авторизации по JWT', 33, 3);
INSERT INTO public."Задание" VALUES (49, 'Оптимизация сложных SQL-запросов и построение составных индексов', 34, 3);
INSERT INTO public."Задание" VALUES (50, 'Интеграция клиентского приложения с сервисом авторизации по JWT', 34, 3);
INSERT INTO public."Задание" VALUES (51, 'Проектирование реляционной схемы базы данных для корпоративного учета', 35, 3);
INSERT INTO public."Задание" VALUES (52, 'Разработка REST API микросервиса на Python/FastAPI', 36, 3);
INSERT INTO public."Задание" VALUES (53, 'Разработка модульных и интеграционных тестов для веб-сервиса', 36, 3);
INSERT INTO public."Задание" VALUES (54, 'Интеграция клиентского приложения с сервисом авторизации по JWT', 37, 3);
INSERT INTO public."Задание" VALUES (55, 'Интеграция клиентского приложения с сервисом авторизации по JWT', 38, 3);
INSERT INTO public."Задание" VALUES (56, 'Разработка модульных и интеграционных тестов для веб-сервиса', 38, 3);
INSERT INTO public."Задание" VALUES (57, 'Разработка REST API микросервиса на Python/FastAPI', 39, 3);
INSERT INTO public."Задание" VALUES (58, 'Анализ требований и составление технического задания на разработку', 40, 3);
INSERT INTO public."Задание" VALUES (59, 'Проектирование реляционной схемы базы данных для корпоративного учета', 41, 3);
INSERT INTO public."Задание" VALUES (60, 'Разработка модульных и интеграционных тестов для веб-сервиса', 42, 3);
INSERT INTO public."Задание" VALUES (61, 'Оптимизация сложных SQL-запросов и построение составных индексов', 43, 3);
INSERT INTO public."Задание" VALUES (62, 'Проектирование реляционной схемы базы данных для корпоративного учета', 43, 3);
INSERT INTO public."Задание" VALUES (63, 'Проектирование реляционной схемы базы данных для корпоративного учета', 44, 3);
INSERT INTO public."Задание" VALUES (64, 'Разработка модульных и интеграционных тестов для веб-сервиса', 44, 3);
INSERT INTO public."Задание" VALUES (65, 'Проектирование реляционной схемы базы данных для корпоративного учета', 45, 3);
INSERT INTO public."Задание" VALUES (66, 'Проектирование реляционной схемы базы данных для корпоративного учета', 46, 3);
INSERT INTO public."Задание" VALUES (67, 'Анализ требований и составление технического задания на разработку', 46, 3);
INSERT INTO public."Задание" VALUES (68, 'Проектирование реляционной схемы базы данных для корпоративного учета', 47, 3);
INSERT INTO public."Задание" VALUES (69, 'Разработка REST API микросервиса на Python/FastAPI', 48, 3);
INSERT INTO public."Задание" VALUES (70, 'Оптимизация сложных SQL-запросов и построение составных индексов', 49, 3);
INSERT INTO public."Задание" VALUES (71, 'Интеграция клиентского приложения с сервисом авторизации по JWT', 49, 3);
INSERT INTO public."Задание" VALUES (72, 'Анализ требований и составление технического задания на разработку', 50, 3);
INSERT INTO public."Задание" VALUES (73, 'Разработка REST API микросервиса на Python/FastAPI', 50, 3);
INSERT INTO public."Задание" VALUES (74, 'Разработка модульных и интеграционных тестов для веб-сервиса', 51, 3);
INSERT INTO public."Задание" VALUES (75, 'Проектирование реляционной схемы базы данных для корпоративного учета', 51, 3);
INSERT INTO public."Задание" VALUES (76, 'Интеграция клиентского приложения с сервисом авторизации по JWT', 52, 3);
INSERT INTO public."Задание" VALUES (77, 'Разработка модульных и интеграционных тестов для веб-сервиса', 53, 3);
INSERT INTO public."Задание" VALUES (78, 'Интеграция клиентского приложения с сервисом авторизации по JWT', 54, 3);
INSERT INTO public."Задание" VALUES (79, 'Анализ требований и составление технического задания на разработку', 55, 3);
INSERT INTO public."Задание" VALUES (80, 'Оптимизация сложных SQL-запросов и построение составных индексов', 56, 3);
INSERT INTO public."Задание" VALUES (81, 'Проектирование реляционной схемы базы данных для корпоративного учета', 56, 3);
INSERT INTO public."Задание" VALUES (82, 'Разработка REST API микросервиса на Python/FastAPI', 57, 3);
INSERT INTO public."Задание" VALUES (83, 'Анализ требований и составление технического задания на разработку', 58, 3);
INSERT INTO public."Задание" VALUES (84, 'Оптимизация сложных SQL-запросов и построение составных индексов', 59, 3);
INSERT INTO public."Задание" VALUES (85, 'Разработка модульных и интеграционных тестов для веб-сервиса', 60, 3);
INSERT INTO public."Задание" VALUES (86, 'Анализ требований и составление технического задания на разработку', 60, 3);
INSERT INTO public."Задание" VALUES (87, 'Анализ требований и составление технического задания на разработку', 61, 3);
INSERT INTO public."Задание" VALUES (88, 'Интеграция клиентского приложения с сервисом авторизации по JWT', 62, 3);
INSERT INTO public."Задание" VALUES (89, 'Анализ требований и составление технического задания на разработку', 63, 3);
INSERT INTO public."Задание" VALUES (90, 'Разработка модульных и интеграционных тестов для веб-сервиса', 63, 3);
INSERT INTO public."Задание" VALUES (91, 'Проектирование реляционной схемы базы данных для корпоративного учета', 64, 3);
INSERT INTO public."Задание" VALUES (92, 'Оптимизация сложных SQL-запросов и построение составных индексов', 64, 3);
INSERT INTO public."Задание" VALUES (93, 'Оптимизация сложных SQL-запросов и построение составных индексов', 65, 3);
INSERT INTO public."Задание" VALUES (94, 'Разработка REST API микросервиса на Python/FastAPI', 66, 3);
INSERT INTO public."Задание" VALUES (95, 'Анализ требований и составление технического задания на разработку', 66, 3);
INSERT INTO public."Задание" VALUES (96, 'Разработка REST API микросервиса на Python/FastAPI', 67, 3);
INSERT INTO public."Задание" VALUES (97, 'Проектирование реляционной схемы базы данных для корпоративного учета', 67, 3);
INSERT INTO public."Задание" VALUES (98, 'Разработка модульных и интеграционных тестов для веб-сервиса', 68, 3);
INSERT INTO public."Задание" VALUES (99, 'Разработка REST API микросервиса на Python/FastAPI', 68, 3);
INSERT INTO public."Задание" VALUES (100, 'Проектирование реляционной схемы базы данных для корпоративного учета', 69, 3);
INSERT INTO public."Задание" VALUES (101, 'Оптимизация сложных SQL-запросов и построение составных индексов', 70, 3);
INSERT INTO public."Задание" VALUES (102, 'Разработка модульных и интеграционных тестов для веб-сервиса', 70, 3);
INSERT INTO public."Задание" VALUES (103, 'Интеграция клиентского приложения с сервисом авторизации по JWT', 71, 3);
INSERT INTO public."Задание" VALUES (104, 'Проектирование реляционной схемы базы данных для корпоративного учета', 72, 3);
INSERT INTO public."Задание" VALUES (105, 'Проведение вычислительного эксперимента и верификация точности модели', 73, 3);
INSERT INTO public."Задание" VALUES (106, 'Реализация численного алгоритма оптимизации графовых структур', 73, 3);
INSERT INTO public."Задание" VALUES (107, 'Анализ и предобработка статистических данных временных рядов', 74, 3);
INSERT INTO public."Задание" VALUES (108, 'Анализ и предобработка статистических данных временных рядов', 75, 3);
INSERT INTO public."Задание" VALUES (109, 'Реализация численного алгоритма оптимизации графовых структур', 75, 3);
INSERT INTO public."Задание" VALUES (110, 'Анализ и предобработка статистических данных временных рядов', 76, 3);
INSERT INTO public."Задание" VALUES (111, 'Реализация численного алгоритма оптимизации графовых структур', 76, 3);
INSERT INTO public."Задание" VALUES (112, 'Построение регрессионной математической модели прогнозирования спроса', 77, 3);
INSERT INTO public."Задание" VALUES (113, 'Анализ и предобработка статистических данных временных рядов', 77, 3);
INSERT INTO public."Задание" VALUES (114, 'Проведение вычислительного эксперимента и верификация точности модели', 78, 3);
INSERT INTO public."Задание" VALUES (115, 'Реализация численного алгоритма оптимизации графовых структур', 79, 3);
INSERT INTO public."Задание" VALUES (116, 'Проведение вычислительного эксперимента и верификация точности модели', 79, 3);
INSERT INTO public."Задание" VALUES (117, 'Проведение вычислительного эксперимента и верификация точности модели', 80, 3);
INSERT INTO public."Задание" VALUES (118, 'Анализ и предобработка статистических данных временных рядов', 80, 3);
INSERT INTO public."Задание" VALUES (119, 'Построение регрессионной математической модели прогнозирования спроса', 81, 3);
INSERT INTO public."Задание" VALUES (120, 'Построение регрессионной математической модели прогнозирования спроса', 82, 3);
INSERT INTO public."Задание" VALUES (121, 'Реализация численного алгоритма оптимизации графовых структур', 82, 3);
INSERT INTO public."Задание" VALUES (122, 'Проведение вычислительного эксперимента и верификация точности модели', 83, 3);
INSERT INTO public."Задание" VALUES (123, 'Построение регрессионной математической модели прогнозирования спроса', 83, 3);
INSERT INTO public."Задание" VALUES (124, 'Проведение вычислительного эксперимента и верификация точности модели', 84, 3);
INSERT INTO public."Задание" VALUES (125, 'Анализ и предобработка статистических данных временных рядов', 84, 3);
INSERT INTO public."Задание" VALUES (126, 'Реализация численного алгоритма оптимизации графовых структур', 85, 3);
INSERT INTO public."Задание" VALUES (127, 'Проведение вычислительного эксперимента и верификация точности модели', 86, 3);
INSERT INTO public."Задание" VALUES (128, 'Проведение вычислительного эксперимента и верификация точности модели', 87, 3);
INSERT INTO public."Задание" VALUES (129, 'Реализация численного алгоритма оптимизации графовых структур', 87, 3);
INSERT INTO public."Задание" VALUES (130, 'Анализ и предобработка статистических данных временных рядов', 88, 3);
INSERT INTO public."Задание" VALUES (131, 'Построение регрессионной математической модели прогнозирования спроса', 88, 3);
INSERT INTO public."Задание" VALUES (132, 'Проведение вычислительного эксперимента и верификация точности модели', 89, 3);
INSERT INTO public."Задание" VALUES (133, 'Проведение вычислительного эксперимента и верификация точности модели', 90, 3);
INSERT INTO public."Задание" VALUES (134, 'Построение регрессионной математической модели прогнозирования спроса', 90, 3);
INSERT INTO public."Задание" VALUES (135, 'Реализация численного алгоритма оптимизации графовых структур', 91, 3);
INSERT INTO public."Задание" VALUES (136, 'Анализ и предобработка статистических данных временных рядов', 92, 3);
INSERT INTO public."Задание" VALUES (137, 'Построение регрессионной математической модели прогнозирования спроса', 92, 3);
INSERT INTO public."Задание" VALUES (138, 'Проведение вычислительного эксперимента и верификация точности модели', 93, 3);
INSERT INTO public."Задание" VALUES (139, 'Реализация численного алгоритма оптимизации графовых структур', 93, 3);
INSERT INTO public."Задание" VALUES (140, 'Анализ конфигураций межсетевого экрана и журнала сетевой активности', 94, 3);
INSERT INTO public."Задание" VALUES (141, 'Анализ конфигураций межсетевого экрана и журнала сетевой активности', 95, 3);
INSERT INTO public."Задание" VALUES (142, 'Разработка регламента резервного копирования и восстановления данных', 95, 3);
INSERT INTO public."Задание" VALUES (143, 'Тестирование защищенности веб-интерфейса от инъекций и CSRF/XSS', 96, 3);
INSERT INTO public."Задание" VALUES (144, 'Анализ конфигураций межсетевого экрана и журнала сетевой активности', 97, 3);
INSERT INTO public."Задание" VALUES (145, 'Анализ конфигураций межсетевого экрана и журнала сетевой активности', 98, 3);
INSERT INTO public."Задание" VALUES (146, 'Тестирование защищенности веб-интерфейса от инъекций и CSRF/XSS', 98, 3);
INSERT INTO public."Задание" VALUES (147, 'Разработка регламента резервного копирования и восстановления данных', 99, 3);
INSERT INTO public."Задание" VALUES (148, 'Тестирование защищенности веб-интерфейса от инъекций и CSRF/XSS', 100, 3);
INSERT INTO public."Задание" VALUES (149, 'Тестирование защищенности веб-интерфейса от инъекций и CSRF/XSS', 101, 3);
INSERT INTO public."Задание" VALUES (150, 'Анализ конфигураций межсетевого экрана и журнала сетевой активности', 102, 3);
INSERT INTO public."Задание" VALUES (151, 'Разработка регламента резервного копирования и восстановления данных', 103, 3);
INSERT INTO public."Задание" VALUES (152, 'Аудит прав доступа и настройка ролевой модели безопасности СУБД', 103, 3);
INSERT INTO public."Задание" VALUES (153, 'Разработка регламента резервного копирования и восстановления данных', 104, 3);
INSERT INTO public."Задание" VALUES (154, 'Разработка регламента резервного копирования и восстановления данных', 105, 3);
INSERT INTO public."Задание" VALUES (155, 'Анализ конфигураций межсетевого экрана и журнала сетевой активности', 105, 3);
INSERT INTO public."Задание" VALUES (156, 'Тестирование защищенности веб-интерфейса от инъекций и CSRF/XSS', 106, 3);
INSERT INTO public."Задание" VALUES (157, 'Анализ конфигураций межсетевого экрана и журнала сетевой активности', 107, 3);
INSERT INTO public."Задание" VALUES (158, 'Аудит прав доступа и настройка ролевой модели безопасности СУБД', 108, 3);
INSERT INTO public."Задание" VALUES (159, 'Анализ конфигураций межсетевого экрана и журнала сетевой активности', 108, 3);
INSERT INTO public."Задание" VALUES (160, 'Разработка регламента резервного копирования и восстановления данных', 109, 3);
INSERT INTO public."Задание" VALUES (161, 'Тестирование защищенности веб-интерфейса от инъекций и CSRF/XSS', 109, 3);
INSERT INTO public."Задание" VALUES (162, 'Тестирование защищенности веб-интерфейса от инъекций и CSRF/XSS', 110, 3);
INSERT INTO public."Задание" VALUES (163, 'Анализ конфигураций межсетевого экрана и журнала сетевой активности', 110, 3);
INSERT INTO public."Задание" VALUES (164, 'Анализ конфигураций межсетевого экрана и журнала сетевой активности', 111, 3);
INSERT INTO public."Задание" VALUES (165, 'Аудит прав доступа и настройка ролевой модели безопасности СУБД', 112, 3);
INSERT INTO public."Задание" VALUES (166, 'Разработка регламента резервного копирования и восстановления данных', 112, 3);
INSERT INTO public."Задание" VALUES (167, 'Разработка регламента резервного копирования и восстановления данных', 113, 3);
INSERT INTO public."Задание" VALUES (168, 'Тестирование защищенности веб-интерфейса от инъекций и CSRF/XSS', 113, 3);
INSERT INTO public."Задание" VALUES (169, 'Анализ конфигураций межсетевого экрана и журнала сетевой активности', 114, 3);
INSERT INTO public."Задание" VALUES (170, 'Разработка регламента резервного копирования и восстановления данных', 114, 3);
INSERT INTO public."Задание" VALUES (171, 'Разработка регламента резервного копирования и восстановления данных', 115, 3);


--
-- Data for Name: Заявка_на_практику; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Заявка_на_практику" VALUES (1, '2025-04-15', NULL, 3, 1, 1);
INSERT INTO public."Заявка_на_практику" VALUES (2, '2025-04-16', NULL, 3, 1, 3);
INSERT INTO public."Заявка_на_практику" VALUES (3, '2025-04-18', NULL, 3, 2, 4);
INSERT INTO public."Заявка_на_практику" VALUES (4, '2025-04-20', NULL, 3, 1, 5);
INSERT INTO public."Заявка_на_практику" VALUES (5, '2025-04-22', NULL, 3, 2, 6);
INSERT INTO public."Заявка_на_практику" VALUES (6, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 9, 167);
INSERT INTO public."Заявка_на_практику" VALUES (7, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 4, 168);
INSERT INTO public."Заявка_на_практику" VALUES (8, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 3, 169);
INSERT INTO public."Заявка_на_практику" VALUES (9, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 7, 170);
INSERT INTO public."Заявка_на_практику" VALUES (10, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 12, 171);
INSERT INTO public."Заявка_на_практику" VALUES (11, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 15, 172);
INSERT INTO public."Заявка_на_практику" VALUES (12, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 4, 173);
INSERT INTO public."Заявка_на_практику" VALUES (13, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 4, 174);
INSERT INTO public."Заявка_на_практику" VALUES (14, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 15, 175);
INSERT INTO public."Заявка_на_практику" VALUES (15, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 18, 176);
INSERT INTO public."Заявка_на_практику" VALUES (16, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 3, 177);
INSERT INTO public."Заявка_на_практику" VALUES (17, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 18, 178);
INSERT INTO public."Заявка_на_практику" VALUES (18, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 7, 179);
INSERT INTO public."Заявка_на_практику" VALUES (19, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 6, 180);
INSERT INTO public."Заявка_на_практику" VALUES (20, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 9, 181);
INSERT INTO public."Заявка_на_практику" VALUES (21, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 12, 182);
INSERT INTO public."Заявка_на_практику" VALUES (22, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 3, 183);
INSERT INTO public."Заявка_на_практику" VALUES (23, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 10, 184);
INSERT INTO public."Заявка_на_практику" VALUES (24, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 7, 185);
INSERT INTO public."Заявка_на_практику" VALUES (25, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 12, 186);
INSERT INTO public."Заявка_на_практику" VALUES (26, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 6, 187);
INSERT INTO public."Заявка_на_практику" VALUES (27, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 4, 188);
INSERT INTO public."Заявка_на_практику" VALUES (28, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 18, 189);
INSERT INTO public."Заявка_на_практику" VALUES (29, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 10, 190);
INSERT INTO public."Заявка_на_практику" VALUES (30, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 4, 191);
INSERT INTO public."Заявка_на_практику" VALUES (31, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 18, 192);
INSERT INTO public."Заявка_на_практику" VALUES (32, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 18, 193);
INSERT INTO public."Заявка_на_практику" VALUES (33, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 18, 194);
INSERT INTO public."Заявка_на_практику" VALUES (34, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 18, 195);
INSERT INTO public."Заявка_на_практику" VALUES (35, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 18, 196);
INSERT INTO public."Заявка_на_практику" VALUES (36, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 3, 197);
INSERT INTO public."Заявка_на_практику" VALUES (37, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 12, 198);
INSERT INTO public."Заявка_на_практику" VALUES (38, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 15, 199);
INSERT INTO public."Заявка_на_практику" VALUES (39, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 3, 200);
INSERT INTO public."Заявка_на_практику" VALUES (40, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 12, 201);
INSERT INTO public."Заявка_на_практику" VALUES (41, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 10, 202);
INSERT INTO public."Заявка_на_практику" VALUES (42, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 9, 203);
INSERT INTO public."Заявка_на_практику" VALUES (43, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 3, 204);
INSERT INTO public."Заявка_на_практику" VALUES (44, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 10, 205);
INSERT INTO public."Заявка_на_практику" VALUES (45, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 4, 206);
INSERT INTO public."Заявка_на_практику" VALUES (46, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 10, 207);
INSERT INTO public."Заявка_на_практику" VALUES (47, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 7, 208);
INSERT INTO public."Заявка_на_практику" VALUES (48, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 4, 209);
INSERT INTO public."Заявка_на_практику" VALUES (49, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 10, 210);
INSERT INTO public."Заявка_на_практику" VALUES (50, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 6, 211);
INSERT INTO public."Заявка_на_практику" VALUES (51, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 3, 212);
INSERT INTO public."Заявка_на_практику" VALUES (52, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 10, 213);
INSERT INTO public."Заявка_на_практику" VALUES (53, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 18, 214);
INSERT INTO public."Заявка_на_практику" VALUES (54, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 10, 215);
INSERT INTO public."Заявка_на_практику" VALUES (55, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 6, 216);
INSERT INTO public."Заявка_на_практику" VALUES (56, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 15, 217);
INSERT INTO public."Заявка_на_практику" VALUES (57, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 15, 218);
INSERT INTO public."Заявка_на_практику" VALUES (58, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 6, 219);
INSERT INTO public."Заявка_на_практику" VALUES (59, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 6, 220);
INSERT INTO public."Заявка_на_практику" VALUES (60, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 4, 221);
INSERT INTO public."Заявка_на_практику" VALUES (61, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 15, 222);
INSERT INTO public."Заявка_на_практику" VALUES (62, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 3, 223);
INSERT INTO public."Заявка_на_практику" VALUES (63, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 9, 224);
INSERT INTO public."Заявка_на_практику" VALUES (64, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 7, 225);
INSERT INTO public."Заявка_на_практику" VALUES (65, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 3, 226);
INSERT INTO public."Заявка_на_практику" VALUES (66, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 7, 227);
INSERT INTO public."Заявка_на_практику" VALUES (67, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 3, 228);
INSERT INTO public."Заявка_на_практику" VALUES (68, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 10, 229);
INSERT INTO public."Заявка_на_практику" VALUES (69, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 9, 230);
INSERT INTO public."Заявка_на_практику" VALUES (70, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 18, 231);
INSERT INTO public."Заявка_на_практику" VALUES (71, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 12, 232);
INSERT INTO public."Заявка_на_практику" VALUES (72, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 18, 233);
INSERT INTO public."Заявка_на_практику" VALUES (73, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 17, 234);
INSERT INTO public."Заявка_на_практику" VALUES (74, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 22, 235);
INSERT INTO public."Заявка_на_практику" VALUES (75, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 20, 236);
INSERT INTO public."Заявка_на_практику" VALUES (76, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 21, 237);
INSERT INTO public."Заявка_на_практику" VALUES (77, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 22, 238);
INSERT INTO public."Заявка_на_практику" VALUES (78, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 22, 239);
INSERT INTO public."Заявка_на_практику" VALUES (79, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 20, 240);
INSERT INTO public."Заявка_на_практику" VALUES (80, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 22, 241);
INSERT INTO public."Заявка_на_практику" VALUES (81, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 22, 242);
INSERT INTO public."Заявка_на_практику" VALUES (82, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 20, 243);
INSERT INTO public."Заявка_на_практику" VALUES (83, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 22, 244);
INSERT INTO public."Заявка_на_практику" VALUES (84, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 17, 245);
INSERT INTO public."Заявка_на_практику" VALUES (85, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 17, 246);
INSERT INTO public."Заявка_на_практику" VALUES (86, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 17, 247);
INSERT INTO public."Заявка_на_практику" VALUES (87, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 17, 248);
INSERT INTO public."Заявка_на_практику" VALUES (88, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 22, 249);
INSERT INTO public."Заявка_на_практику" VALUES (89, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 21, 250);
INSERT INTO public."Заявка_на_практику" VALUES (90, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 17, 251);
INSERT INTO public."Заявка_на_практику" VALUES (91, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 17, 252);
INSERT INTO public."Заявка_на_практику" VALUES (92, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 22, 253);
INSERT INTO public."Заявка_на_практику" VALUES (93, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 22, 254);
INSERT INTO public."Заявка_на_практику" VALUES (94, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 5, 255);
INSERT INTO public."Заявка_на_практику" VALUES (95, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 24, 256);
INSERT INTO public."Заявка_на_практику" VALUES (96, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 5, 257);
INSERT INTO public."Заявка_на_практику" VALUES (97, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 24, 258);
INSERT INTO public."Заявка_на_практику" VALUES (98, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 25, 259);
INSERT INTO public."Заявка_на_практику" VALUES (99, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 16, 260);
INSERT INTO public."Заявка_на_практику" VALUES (100, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 25, 261);
INSERT INTO public."Заявка_на_практику" VALUES (101, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 23, 262);
INSERT INTO public."Заявка_на_практику" VALUES (102, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 23, 263);
INSERT INTO public."Заявка_на_практику" VALUES (103, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 5, 264);
INSERT INTO public."Заявка_на_практику" VALUES (104, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 5, 265);
INSERT INTO public."Заявка_на_практику" VALUES (105, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 23, 266);
INSERT INTO public."Заявка_на_практику" VALUES (106, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 23, 267);
INSERT INTO public."Заявка_на_практику" VALUES (107, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 23, 268);
INSERT INTO public."Заявка_на_практику" VALUES (108, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 24, 269);
INSERT INTO public."Заявка_на_практику" VALUES (109, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 25, 270);
INSERT INTO public."Заявка_на_практику" VALUES (110, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 24, 271);
INSERT INTO public."Заявка_на_практику" VALUES (111, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 16, 272);
INSERT INTO public."Заявка_на_практику" VALUES (112, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 24, 273);
INSERT INTO public."Заявка_на_практику" VALUES (113, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 23, 274);
INSERT INTO public."Заявка_на_практику" VALUES (114, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 24, 275);
INSERT INTO public."Заявка_на_практику" VALUES (115, '2026-04-15', 'Прошу согласовать прохождение учебной практики', 3, 5, 276);
INSERT INTO public."Заявка_на_практику" VALUES (116, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 10, 7);
INSERT INTO public."Заявка_на_практику" VALUES (117, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 12, 8);
INSERT INTO public."Заявка_на_практику" VALUES (118, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 3, 9);
INSERT INTO public."Заявка_на_практику" VALUES (119, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 12, 10);
INSERT INTO public."Заявка_на_практику" VALUES (120, '2026-09-10', 'Первичная подача заявки', 1, 6, 11);
INSERT INTO public."Заявка_на_практику" VALUES (121, '2026-09-10', 'Резюме передано руководителю направления', 2, 6, 12);
INSERT INTO public."Заявка_на_практику" VALUES (122, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 15, 13);
INSERT INTO public."Заявка_на_практику" VALUES (123, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 4, 14);
INSERT INTO public."Заявка_на_практику" VALUES (124, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 10, 15);
INSERT INTO public."Заявка_на_практику" VALUES (125, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 3, 16);
INSERT INTO public."Заявка_на_практику" VALUES (126, '2026-09-10', 'Первичная подача заявки', 1, 15, 17);
INSERT INTO public."Заявка_на_практику" VALUES (127, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 10, 18);
INSERT INTO public."Заявка_на_практику" VALUES (128, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 4, 19);
INSERT INTO public."Заявка_на_практику" VALUES (129, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 18, 20);
INSERT INTO public."Заявка_на_практику" VALUES (130, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 10, 21);
INSERT INTO public."Заявка_на_практику" VALUES (131, '2026-09-10', 'Первичная подача заявки', 1, 7, 22);
INSERT INTO public."Заявка_на_практику" VALUES (132, '2026-09-10', 'Резюме передано руководителю направления', 2, 3, 23);
INSERT INTO public."Заявка_на_практику" VALUES (133, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 15, 24);
INSERT INTO public."Заявка_на_практику" VALUES (134, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 18, 25);
INSERT INTO public."Заявка_на_практику" VALUES (135, '2026-09-10', 'Резюме передано руководителю направления', 2, 9, 26);
INSERT INTO public."Заявка_на_практику" VALUES (136, '2026-09-10', 'Первичная подача заявки', 1, 7, 27);
INSERT INTO public."Заявка_на_практику" VALUES (137, '2026-09-10', 'Резюме передано руководителю направления', 2, 9, 28);
INSERT INTO public."Заявка_на_практику" VALUES (138, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 15, 29);
INSERT INTO public."Заявка_на_практику" VALUES (139, '2026-09-10', 'Резюме передано руководителю направления', 2, 6, 30);
INSERT INTO public."Заявка_на_практику" VALUES (140, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 15, 31);
INSERT INTO public."Заявка_на_практику" VALUES (141, '2026-09-10', 'Первичная подача заявки', 1, 15, 32);
INSERT INTO public."Заявка_на_практику" VALUES (142, '2026-09-10', 'Резюме передано руководителю направления', 2, 10, 33);
INSERT INTO public."Заявка_на_практику" VALUES (143, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 4, 34);
INSERT INTO public."Заявка_на_практику" VALUES (144, '2026-09-10', 'Резюме передано руководителю направления', 2, 9, 35);
INSERT INTO public."Заявка_на_практику" VALUES (145, '2026-09-10', 'Резюме передано руководителю направления', 2, 6, 36);
INSERT INTO public."Заявка_на_практику" VALUES (146, '2026-09-10', 'Резюме передано руководителю направления', 2, 6, 37);
INSERT INTO public."Заявка_на_практику" VALUES (147, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 18, 38);
INSERT INTO public."Заявка_на_практику" VALUES (148, '2026-09-10', 'Резюме передано руководителю направления', 2, 7, 39);
INSERT INTO public."Заявка_на_практику" VALUES (149, '2026-09-10', 'Резюме передано руководителю направления', 2, 7, 40);
INSERT INTO public."Заявка_на_практику" VALUES (150, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 3, 41);
INSERT INTO public."Заявка_на_практику" VALUES (151, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 10, 42);
INSERT INTO public."Заявка_на_практику" VALUES (152, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 18, 43);
INSERT INTO public."Заявка_на_практику" VALUES (153, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 4, 44);
INSERT INTO public."Заявка_на_практику" VALUES (154, '2026-09-10', 'Первичная подача заявки', 1, 12, 45);
INSERT INTO public."Заявка_на_практику" VALUES (155, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 15, 46);
INSERT INTO public."Заявка_на_практику" VALUES (156, '2026-09-10', 'Резюме передано руководителю направления', 2, 12, 47);
INSERT INTO public."Заявка_на_практику" VALUES (157, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 4, 48);
INSERT INTO public."Заявка_на_практику" VALUES (158, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 10, 49);
INSERT INTO public."Заявка_на_практику" VALUES (159, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 15, 50);
INSERT INTO public."Заявка_на_практику" VALUES (160, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 18, 51);
INSERT INTO public."Заявка_на_практику" VALUES (161, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 18, 52);
INSERT INTO public."Заявка_на_практику" VALUES (162, '2026-09-10', 'Резюме передано руководителю направления', 2, 6, 53);
INSERT INTO public."Заявка_на_практику" VALUES (163, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 6, 54);
INSERT INTO public."Заявка_на_практику" VALUES (164, '2026-09-10', 'Резюме передано руководителю направления', 2, 3, 55);
INSERT INTO public."Заявка_на_практику" VALUES (165, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 18, 56);
INSERT INTO public."Заявка_на_практику" VALUES (166, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 6, 57);
INSERT INTO public."Заявка_на_практику" VALUES (167, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 7, 58);
INSERT INTO public."Заявка_на_практику" VALUES (168, '2026-09-10', 'Резюме передано руководителю направления', 2, 18, 59);
INSERT INTO public."Заявка_на_практику" VALUES (169, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 4, 60);
INSERT INTO public."Заявка_на_практику" VALUES (170, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 18, 61);
INSERT INTO public."Заявка_на_практику" VALUES (171, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 9, 62);
INSERT INTO public."Заявка_на_практику" VALUES (172, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 4, 63);
INSERT INTO public."Заявка_на_практику" VALUES (173, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 6, 64);
INSERT INTO public."Заявка_на_практику" VALUES (174, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 6, 65);
INSERT INTO public."Заявка_на_практику" VALUES (175, '2026-09-10', 'Резюме передано руководителю направления', 2, 10, 66);
INSERT INTO public."Заявка_на_практику" VALUES (176, '2026-09-10', 'Резюме передано руководителю направления', 2, 3, 67);
INSERT INTO public."Заявка_на_практику" VALUES (177, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 3, 68);
INSERT INTO public."Заявка_на_практику" VALUES (178, '2026-09-10', 'Резюме передано руководителю направления', 2, 9, 69);
INSERT INTO public."Заявка_на_практику" VALUES (179, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 12, 70);
INSERT INTO public."Заявка_на_практику" VALUES (180, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 3, 71);
INSERT INTO public."Заявка_на_практику" VALUES (181, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 18, 72);
INSERT INTO public."Заявка_на_практику" VALUES (182, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 9, 73);
INSERT INTO public."Заявка_на_практику" VALUES (183, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 12, 74);
INSERT INTO public."Заявка_на_практику" VALUES (184, '2026-09-10', 'Резюме передано руководителю направления', 2, 4, 75);
INSERT INTO public."Заявка_на_практику" VALUES (185, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 6, 76);
INSERT INTO public."Заявка_на_практику" VALUES (186, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 15, 77);
INSERT INTO public."Заявка_на_практику" VALUES (187, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 10, 78);
INSERT INTO public."Заявка_на_практику" VALUES (188, '2026-09-10', 'Резюме передано руководителю направления', 2, 10, 79);
INSERT INTO public."Заявка_на_практику" VALUES (189, '2026-09-10', 'Резюме передано руководителю направления', 2, 10, 80);
INSERT INTO public."Заявка_на_практику" VALUES (190, '2026-09-10', 'Первичная подача заявки', 1, 10, 81);
INSERT INTO public."Заявка_на_практику" VALUES (191, '2026-09-10', 'Резюме передано руководителю направления', 2, 6, 82);
INSERT INTO public."Заявка_на_практику" VALUES (192, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 18, 83);
INSERT INTO public."Заявка_на_практику" VALUES (193, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 10, 84);
INSERT INTO public."Заявка_на_практику" VALUES (194, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 4, 85);
INSERT INTO public."Заявка_на_практику" VALUES (195, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 7, 86);
INSERT INTO public."Заявка_на_практику" VALUES (196, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 3, 87);
INSERT INTO public."Заявка_на_практику" VALUES (197, '2026-09-10', 'Резюме передано руководителю направления', 2, 12, 88);
INSERT INTO public."Заявка_на_практику" VALUES (198, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 12, 89);
INSERT INTO public."Заявка_на_практику" VALUES (199, '2026-09-10', 'Резюме передано руководителю направления', 2, 6, 90);
INSERT INTO public."Заявка_на_практику" VALUES (200, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 10, 91);
INSERT INTO public."Заявка_на_практику" VALUES (201, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 6, 92);
INSERT INTO public."Заявка_на_практику" VALUES (202, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 18, 93);
INSERT INTO public."Заявка_на_практику" VALUES (203, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 9, 94);
INSERT INTO public."Заявка_на_практику" VALUES (204, '2026-09-10', 'Первичная подача заявки', 1, 4, 95);
INSERT INTO public."Заявка_на_практику" VALUES (205, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 18, 96);
INSERT INTO public."Заявка_на_практику" VALUES (206, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 7, 97);
INSERT INTO public."Заявка_на_практику" VALUES (207, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 10, 98);
INSERT INTO public."Заявка_на_практику" VALUES (208, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 9, 99);
INSERT INTO public."Заявка_на_практику" VALUES (209, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 15, 100);
INSERT INTO public."Заявка_на_практику" VALUES (210, '2026-09-10', 'Резюме передано руководителю направления', 2, 3, 101);
INSERT INTO public."Заявка_на_практику" VALUES (211, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 12, 102);
INSERT INTO public."Заявка_на_практику" VALUES (212, '2026-09-10', 'Резюме передано руководителю направления', 2, 9, 103);
INSERT INTO public."Заявка_на_практику" VALUES (213, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 12, 104);
INSERT INTO public."Заявка_на_практику" VALUES (214, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 12, 105);
INSERT INTO public."Заявка_на_практику" VALUES (215, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 18, 106);
INSERT INTO public."Заявка_на_практику" VALUES (216, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 18, 107);
INSERT INTO public."Заявка_на_практику" VALUES (217, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 12, 108);
INSERT INTO public."Заявка_на_практику" VALUES (218, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 18, 109);
INSERT INTO public."Заявка_на_практику" VALUES (219, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 4, 110);
INSERT INTO public."Заявка_на_практику" VALUES (220, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 4, 111);
INSERT INTO public."Заявка_на_практику" VALUES (221, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 10, 112);
INSERT INTO public."Заявка_на_практику" VALUES (222, '2026-09-10', 'Резюме передано руководителю направления', 2, 10, 113);
INSERT INTO public."Заявка_на_практику" VALUES (223, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 7, 114);
INSERT INTO public."Заявка_на_практику" VALUES (224, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 17, 115);
INSERT INTO public."Заявка_на_практику" VALUES (225, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 20, 116);
INSERT INTO public."Заявка_на_практику" VALUES (226, '2026-09-10', 'Резюме передано руководителю направления', 2, 22, 117);
INSERT INTO public."Заявка_на_практику" VALUES (227, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 17, 118);
INSERT INTO public."Заявка_на_практику" VALUES (228, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 21, 119);
INSERT INTO public."Заявка_на_практику" VALUES (229, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 22, 120);
INSERT INTO public."Заявка_на_практику" VALUES (230, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 22, 121);
INSERT INTO public."Заявка_на_практику" VALUES (231, '2026-09-10', 'Резюме передано руководителю направления', 2, 17, 122);
INSERT INTO public."Заявка_на_практику" VALUES (232, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 22, 123);
INSERT INTO public."Заявка_на_практику" VALUES (233, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 20, 124);
INSERT INTO public."Заявка_на_практику" VALUES (234, '2026-09-10', 'Первичная подача заявки', 1, 20, 125);
INSERT INTO public."Заявка_на_практику" VALUES (235, '2026-09-10', 'Резюме передано руководителю направления', 2, 22, 126);
INSERT INTO public."Заявка_на_практику" VALUES (236, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 20, 127);
INSERT INTO public."Заявка_на_практику" VALUES (237, '2026-09-10', 'Первичная подача заявки', 1, 22, 128);
INSERT INTO public."Заявка_на_практику" VALUES (238, '2026-09-10', 'Резюме передано руководителю направления', 2, 21, 129);
INSERT INTO public."Заявка_на_практику" VALUES (239, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 17, 130);
INSERT INTO public."Заявка_на_практику" VALUES (240, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 17, 131);
INSERT INTO public."Заявка_на_практику" VALUES (241, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 21, 132);
INSERT INTO public."Заявка_на_практику" VALUES (242, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 20, 133);
INSERT INTO public."Заявка_на_практику" VALUES (243, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 17, 134);
INSERT INTO public."Заявка_на_практику" VALUES (244, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 21, 135);
INSERT INTO public."Заявка_на_практику" VALUES (245, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 21, 136);
INSERT INTO public."Заявка_на_практику" VALUES (246, '2026-09-10', 'Резюме передано руководителю направления', 2, 17, 137);
INSERT INTO public."Заявка_на_практику" VALUES (247, '2026-09-10', 'Резюме передано руководителю направления', 2, 20, 138);
INSERT INTO public."Заявка_на_практику" VALUES (248, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 21, 139);
INSERT INTO public."Заявка_на_практику" VALUES (249, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 17, 140);
INSERT INTO public."Заявка_на_практику" VALUES (250, '2026-09-10', 'Первичная подача заявки', 1, 23, 141);
INSERT INTO public."Заявка_на_практику" VALUES (251, '2026-09-10', 'Первичная подача заявки', 1, 24, 142);
INSERT INTO public."Заявка_на_практику" VALUES (252, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 23, 143);
INSERT INTO public."Заявка_на_практику" VALUES (253, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 23, 144);
INSERT INTO public."Заявка_на_практику" VALUES (254, '2026-09-10', 'Первичная подача заявки', 1, 16, 145);
INSERT INTO public."Заявка_на_практику" VALUES (255, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 23, 146);
INSERT INTO public."Заявка_на_практику" VALUES (256, '2026-09-10', 'Первичная подача заявки', 1, 16, 147);
INSERT INTO public."Заявка_на_практику" VALUES (257, '2026-09-10', 'Резюме передано руководителю направления', 2, 23, 148);
INSERT INTO public."Заявка_на_практику" VALUES (258, '2026-09-10', 'Резюме передано руководителю направления', 2, 16, 149);
INSERT INTO public."Заявка_на_практику" VALUES (259, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 24, 150);
INSERT INTO public."Заявка_на_практику" VALUES (260, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 23, 151);
INSERT INTO public."Заявка_на_практику" VALUES (261, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 23, 152);
INSERT INTO public."Заявка_на_практику" VALUES (262, '2026-09-10', 'Резюме передано руководителю направления', 2, 25, 153);
INSERT INTO public."Заявка_на_практику" VALUES (263, '2026-09-10', 'Резюме передано руководителю направления', 2, 24, 154);
INSERT INTO public."Заявка_на_практику" VALUES (264, '2026-09-10', 'Резюме передано руководителю направления', 2, 24, 155);
INSERT INTO public."Заявка_на_практику" VALUES (265, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 16, 156);
INSERT INTO public."Заявка_на_практику" VALUES (266, '2026-09-10', 'Первичная подача заявки', 1, 23, 157);
INSERT INTO public."Заявка_на_практику" VALUES (267, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 5, 158);
INSERT INTO public."Заявка_на_практику" VALUES (268, '2026-09-10', 'Резюме передано руководителю направления', 2, 24, 159);
INSERT INTO public."Заявка_на_практику" VALUES (269, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 24, 160);
INSERT INTO public."Заявка_на_практику" VALUES (270, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 25, 161);
INSERT INTO public."Заявка_на_практику" VALUES (271, '2026-09-10', 'Резюме передано руководителю направления', 2, 25, 162);
INSERT INTO public."Заявка_на_практику" VALUES (272, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 16, 163);
INSERT INTO public."Заявка_на_практику" VALUES (273, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 25, 164);
INSERT INTO public."Заявка_на_практику" VALUES (274, '2026-09-10', 'Резюме передано руководителю направления', 2, 5, 165);
INSERT INTO public."Заявка_на_практику" VALUES (275, '2026-09-10', 'Кандидатура согласована с предприятием', 3, 25, 166);


--
-- Data for Name: Компетенция; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Компетенция" VALUES ('ОПК-1', 'Способен применять методы', 2, '09.03.02');
INSERT INTO public."Компетенция" VALUES ('ПК-2', 'Способен проектировать БД', 3, '09.03.02');
INSERT INTO public."Компетенция" VALUES ('УК-1', 'Способен осуществлять поиск', 1, '09.03.02');
INSERT INTO public."Компетенция" VALUES ('ПК-1', 'Способен разрабатывать компоненты программных комплексов', 3, '09.03.02');
INSERT INTO public."Компетенция" VALUES ('ОПК-1-ПМ', 'Способен применять фундаментальные математические методы', 2, '01.03.02');
INSERT INTO public."Компетенция" VALUES ('ПК-1-ПМ', 'Способен разрабатывать математические модели и алгоритмы', 3, '01.03.02');
INSERT INTO public."Компетенция" VALUES ('ПК-2-ПМ', 'Способен проводить вычислительные эксперименты', 3, '01.03.02');
INSERT INTO public."Компетенция" VALUES ('ОПК-1-ИБ', 'Способен применять методы защиты информации в вычислительных системах', 2, '10.03.01');
INSERT INTO public."Компетенция" VALUES ('ПК-1-ИБ', 'Способен настраивать политики безопасности и средства разграничения доступа', 3, '10.03.01');
INSERT INTO public."Компетенция" VALUES ('ПК-2-ИБ', 'Способен проводить аудит защищенности информационной инфраструктуры', 3, '10.03.01');


--
-- Data for Name: Направление_подготовки; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Направление_подготовки" VALUES ('09.03.02', 'Информационные системы и технологии');
INSERT INTO public."Направление_подготовки" VALUES ('01.03.02', 'Прикладная математика и информатика');
INSERT INTO public."Направление_подготовки" VALUES ('10.03.01', 'Информационная безопасность');


--
-- Data for Name: Организация_партнер; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Организация_партнер" VALUES ('АО СмартСофт', 'г. Кострома, пр. Мира, 55', '4401003344', '131313131', '+79008887766', 'Лебедева', 'Ирина', 'Сергеевна', 'разовый');
INSERT INTO public."Организация_партнер" VALUES ('ООО Тензор', 'г. Кострома, ул. Ленина, 10', '4401001122', '134131313', '+79991234567', 'Орлов', 'Максим', 'Юрьевич', 'постоянный');
INSERT INTO public."Организация_партнер" VALUES ('ООО ЮвелирСофт', 'г. Кострома, ул. Советская, д. 120', '4401156789', '440101001', '+74942494949', 'Смирнова', 'Ольга', 'Викторовна', 'постоянный');
INSERT INTO public."Организация_партнер" VALUES ('ООО Девелоника', 'г. Кострома, ул. Ленина, д. 20, оф. 301', '7722754321', '440102001', '+74942654321', 'Кузнецов', 'Артем', 'Дмитриевич', 'постоянный');
INSERT INTO public."Организация_партнер" VALUES ('АО СКБТ', 'г. Кострома, ул. Галичская, д. 128', '4401005577', '440101001', '+74942551122', 'Федоров', 'Михаил', 'Александрович', 'постоянный');
INSERT INTO public."Организация_партнер" VALUES ('ПАО Сбербанк', 'г. Кострома, ул. Никитская, д. 33', '7707083893', '440102001', '+74942398000', 'Белов', 'Сергей', 'Николаевич', 'постоянный');


--
-- Data for Name: Оценка_выполнения; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Оценка_выполнения" VALUES (1, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (2, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (3, 'ОПК-1', 'Частично');
INSERT INTO public."Оценка_выполнения" VALUES (4, 'УК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (5, 'УК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (6, 'ОПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (7, 'УК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (8, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (9, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (10, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (11, 'ОПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (12, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (13, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (14, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (15, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (16, 'ОПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (17, 'УК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (18, 'УК-1', 'Частично');
INSERT INTO public."Оценка_выполнения" VALUES (19, 'УК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (20, 'ОПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (21, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (22, 'УК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (23, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (24, 'УК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (25, 'УК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (26, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (27, 'УК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (28, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (29, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (30, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (31, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (32, 'УК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (33, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (34, 'ОПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (35, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (36, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (37, 'ПК-1', 'Частично');
INSERT INTO public."Оценка_выполнения" VALUES (38, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (39, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (40, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (41, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (42, 'УК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (43, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (44, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (45, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (46, 'ОПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (47, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (48, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (49, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (50, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (51, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (52, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (53, 'ОПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (54, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (55, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (56, 'ОПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (57, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (58, 'УК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (59, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (60, 'ОПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (61, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (62, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (63, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (64, 'ОПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (65, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (66, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (67, 'УК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (68, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (69, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (70, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (71, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (72, 'УК-1', 'Частично');
INSERT INTO public."Оценка_выполнения" VALUES (73, 'ПК-1', 'Частично');
INSERT INTO public."Оценка_выполнения" VALUES (74, 'ОПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (75, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (76, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (77, 'ОПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (78, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (79, 'УК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (80, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (81, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (82, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (83, 'УК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (84, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (85, 'ОПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (86, 'УК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (87, 'УК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (88, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (89, 'УК-1', 'Частично');
INSERT INTO public."Оценка_выполнения" VALUES (90, 'ОПК-1', 'Частично');
INSERT INTO public."Оценка_выполнения" VALUES (91, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (92, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (93, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (94, 'ПК-1', 'Частично');
INSERT INTO public."Оценка_выполнения" VALUES (95, 'УК-1', 'Частично');
INSERT INTO public."Оценка_выполнения" VALUES (96, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (97, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (98, 'ОПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (99, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (100, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (101, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (102, 'ОПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (103, 'ПК-1', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (104, 'ПК-2', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (105, 'ПК-2-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (106, 'ПК-1-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (107, 'ОПК-1-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (108, 'ОПК-1-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (109, 'ПК-1-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (110, 'ОПК-1-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (111, 'ПК-1-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (112, 'ПК-2-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (113, 'ОПК-1-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (114, 'ПК-2-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (115, 'ПК-1-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (116, 'ПК-2-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (117, 'ПК-2-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (118, 'ОПК-1-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (119, 'ПК-2-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (120, 'ПК-2-ПМ', 'Частично');
INSERT INTO public."Оценка_выполнения" VALUES (121, 'ПК-1-ПМ', 'Частично');
INSERT INTO public."Оценка_выполнения" VALUES (122, 'ПК-2-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (123, 'ПК-2-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (124, 'ПК-2-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (125, 'ОПК-1-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (126, 'ПК-1-ПМ', 'Частично');
INSERT INTO public."Оценка_выполнения" VALUES (127, 'ПК-2-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (128, 'ПК-2-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (129, 'ПК-1-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (130, 'ОПК-1-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (131, 'ПК-2-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (132, 'ПК-2-ПМ', 'Частично');
INSERT INTO public."Оценка_выполнения" VALUES (133, 'ПК-2-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (134, 'ПК-2-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (135, 'ПК-1-ПМ', 'Частично');
INSERT INTO public."Оценка_выполнения" VALUES (136, 'ОПК-1-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (137, 'ПК-2-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (138, 'ПК-2-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (139, 'ПК-1-ПМ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (140, 'ОПК-1-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (141, 'ОПК-1-ИБ', 'Частично');
INSERT INTO public."Оценка_выполнения" VALUES (142, 'ПК-1-ИБ', 'Частично');
INSERT INTO public."Оценка_выполнения" VALUES (143, 'ПК-2-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (144, 'ОПК-1-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (145, 'ОПК-1-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (146, 'ПК-2-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (147, 'ПК-1-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (148, 'ПК-2-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (149, 'ПК-2-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (150, 'ОПК-1-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (151, 'ПК-1-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (152, 'ПК-1-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (153, 'ПК-1-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (154, 'ПК-1-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (155, 'ОПК-1-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (156, 'ПК-2-ИБ', 'Частично');
INSERT INTO public."Оценка_выполнения" VALUES (157, 'ОПК-1-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (158, 'ПК-1-ИБ', 'Частично');
INSERT INTO public."Оценка_выполнения" VALUES (159, 'ОПК-1-ИБ', 'Частично');
INSERT INTO public."Оценка_выполнения" VALUES (160, 'ПК-1-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (161, 'ПК-2-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (162, 'ПК-2-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (163, 'ОПК-1-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (164, 'ОПК-1-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (165, 'ПК-1-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (166, 'ПК-1-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (167, 'ПК-1-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (168, 'ПК-2-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (169, 'ОПК-1-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (170, 'ПК-1-ИБ', 'Сформирована');
INSERT INTO public."Оценка_выполнения" VALUES (171, 'ПК-1-ИБ', 'Сформирована');


--
-- Data for Name: Практика; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Практика" VALUES (1, 2, 108, '09.03.02', 1);
INSERT INTO public."Практика" VALUES (2, 4, 216, '09.03.02', 2);
INSERT INTO public."Практика" VALUES (3, 2, 108, '01.03.02', 1);
INSERT INTO public."Практика" VALUES (4, 4, 216, '01.03.02', 2);
INSERT INTO public."Практика" VALUES (5, 2, 108, '10.03.01', 1);
INSERT INTO public."Практика" VALUES (6, 4, 216, '10.03.01', 2);


--
-- Data for Name: Практика_студента; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Практика_студента" VALUES (3, 'Июль-Авг', 'г. Кострома', NULL, 'Алексей', 'Сергеевич', 7, 3);
INSERT INTO public."Практика_студента" VALUES (7, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Ленина, 10', NULL, 'Максим', 'Юрьевич', 17, 7);
INSERT INTO public."Практика_студента" VALUES (12, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Ленина, 10', NULL, 'Михаил', 'Александрович', 16, 12);
INSERT INTO public."Практика_студента" VALUES (1, 'Июнь-июль', 'г. Кострома', 'Попов', 'Роман', NULL, 11, 1);
INSERT INTO public."Практика_студента" VALUES (2, 'Июнь-июль', 'г. Кострома', 'Попов', 'Роман', NULL, 18, 2);
INSERT INTO public."Практика_студента" VALUES (4, 'Июнь-июль', 'г. Кострома', 'Попов', 'Роман', NULL, 14, 4);
INSERT INTO public."Практика_студента" VALUES (5, 'Июль-Авг', 'г. Кострома', 'Жуков', 'Степан', NULL, 3, 5);
INSERT INTO public."Практика_студента" VALUES (6, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 10, 6);
INSERT INTO public."Практика_студента" VALUES (8, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Ленина, 10', 'Орлов', 'Максим', 'Юрьевич', 6, 8);
INSERT INTO public."Практика_студента" VALUES (9, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Советская, д. 120', 'Смирнова', 'Ольга', 'Викторовна', 13, 9);
INSERT INTO public."Практика_студента" VALUES (10, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Галичская, д. 128', 'Федоров', 'Михаил', 'Александрович', 2, 10);
INSERT INTO public."Практика_студента" VALUES (11, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Никитская, д. 33', 'Белов', 'Сергей', 'Николаевич', 9, 11);
INSERT INTO public."Практика_студента" VALUES (13, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Ленина, 10', 'Орлов', 'Максим', 'Юрьевич', 5, 13);
INSERT INTO public."Практика_студента" VALUES (14, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Никитская, д. 33', 'Белов', 'Сергей', 'Николаевич', 12, 14);
INSERT INTO public."Практика_студента" VALUES (15, '06.07.2026 - 19.07.2026', 'г. Кострома, пр. Мира, 55', 'Лебедева', 'Ирина', 'Сергеевна', 1, 15);
INSERT INTO public."Практика_студента" VALUES (16, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Ленина, 10', 'Орлов', 'Максим', 'Юрьевич', 8, 16);
INSERT INTO public."Практика_студента" VALUES (17, '01.07.2026 - 14.07.2026', 'г. Кострома, пр. Мира, 55', 'Лебедева', 'Ирина', 'Сергеевна', 15, 17);
INSERT INTO public."Практика_студента" VALUES (18, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Советская, д. 120', 'Смирнова', 'Ольга', 'Викторовна', 4, 18);
INSERT INTO public."Практика_студента" VALUES (19, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Советская, д. 120', 'Смирнова', 'Ольга', 'Викторовна', 11, 19);
INSERT INTO public."Практика_студента" VALUES (20, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 18, 20);
INSERT INTO public."Практика_студента" VALUES (21, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Галичская, д. 128', 'Федоров', 'Михаил', 'Александрович', 7, 21);
INSERT INTO public."Практика_студента" VALUES (22, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Ленина, 10', 'Орлов', 'Максим', 'Юрьевич', 14, 22);
INSERT INTO public."Практика_студента" VALUES (23, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 3, 23);
INSERT INTO public."Практика_студента" VALUES (24, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Советская, д. 120', 'Смирнова', 'Ольга', 'Викторовна', 10, 24);
INSERT INTO public."Практика_студента" VALUES (25, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Галичская, д. 128', 'Федоров', 'Михаил', 'Александрович', 17, 25);
INSERT INTO public."Практика_студента" VALUES (26, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Советская, д. 120', 'Смирнова', 'Ольга', 'Викторовна', 6, 26);
INSERT INTO public."Практика_студента" VALUES (27, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Ленина, 10', 'Орлов', 'Максим', 'Юрьевич', 13, 27);
INSERT INTO public."Практика_студента" VALUES (28, '13.07.2026 - 26.07.2026', 'г. Кострома, пр. Мира, 55', 'Лебедева', 'Ирина', 'Сергеевна', 2, 28);
INSERT INTO public."Практика_студента" VALUES (29, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 9, 29);
INSERT INTO public."Практика_студента" VALUES (30, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Ленина, 10', 'Орлов', 'Максим', 'Юрьевич', 16, 30);
INSERT INTO public."Практика_студента" VALUES (31, '13.07.2026 - 26.07.2026', 'г. Кострома, пр. Мира, 55', 'Лебедева', 'Ирина', 'Сергеевна', 5, 31);
INSERT INTO public."Практика_студента" VALUES (32, '06.07.2026 - 19.07.2026', 'г. Кострома, пр. Мира, 55', 'Лебедева', 'Ирина', 'Сергеевна', 12, 32);
INSERT INTO public."Практика_студента" VALUES (33, '13.07.2026 - 26.07.2026', 'г. Кострома, пр. Мира, 55', 'Лебедева', 'Ирина', 'Сергеевна', 1, 33);
INSERT INTO public."Практика_студента" VALUES (34, '06.07.2026 - 19.07.2026', 'г. Кострома, пр. Мира, 55', 'Лебедева', 'Ирина', 'Сергеевна', 8, 34);
INSERT INTO public."Практика_студента" VALUES (35, '01.07.2026 - 14.07.2026', 'г. Кострома, пр. Мира, 55', 'Лебедева', 'Ирина', 'Сергеевна', 15, 35);
INSERT INTO public."Практика_студента" VALUES (36, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Ленина, 10', 'Орлов', 'Максим', 'Юрьевич', 4, 36);
INSERT INTO public."Практика_студента" VALUES (37, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Галичская, д. 128', 'Федоров', 'Михаил', 'Александрович', 11, 37);
INSERT INTO public."Практика_студента" VALUES (38, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Никитская, д. 33', 'Белов', 'Сергей', 'Николаевич', 18, 38);
INSERT INTO public."Практика_студента" VALUES (39, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Ленина, 10', 'Орлов', 'Максим', 'Юрьевич', 7, 39);
INSERT INTO public."Практика_студента" VALUES (40, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Галичская, д. 128', 'Федоров', 'Михаил', 'Александрович', 14, 40);
INSERT INTO public."Практика_студента" VALUES (41, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 3, 41);
INSERT INTO public."Практика_студента" VALUES (42, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 10, 42);
INSERT INTO public."Практика_студента" VALUES (43, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Ленина, 10', 'Орлов', 'Максим', 'Юрьевич', 17, 43);
INSERT INTO public."Практика_студента" VALUES (44, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 6, 44);
INSERT INTO public."Практика_студента" VALUES (45, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Ленина, 10', 'Орлов', 'Максим', 'Юрьевич', 13, 45);
INSERT INTO public."Практика_студента" VALUES (46, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 2, 46);
INSERT INTO public."Практика_студента" VALUES (47, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Советская, д. 120', 'Смирнова', 'Ольга', 'Викторовна', 9, 47);
INSERT INTO public."Практика_студента" VALUES (48, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Ленина, 10', 'Орлов', 'Максим', 'Юрьевич', 16, 48);
INSERT INTO public."Практика_студента" VALUES (49, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 5, 49);
INSERT INTO public."Практика_студента" VALUES (50, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Советская, д. 120', 'Смирнова', 'Ольга', 'Викторовна', 12, 50);
INSERT INTO public."Практика_студента" VALUES (51, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Ленина, 10', 'Орлов', 'Максим', 'Юрьевич', 1, 51);
INSERT INTO public."Практика_студента" VALUES (52, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 8, 52);
INSERT INTO public."Практика_студента" VALUES (53, '06.07.2026 - 19.07.2026', 'г. Кострома, пр. Мира, 55', 'Лебедева', 'Ирина', 'Сергеевна', 15, 53);
INSERT INTO public."Практика_студента" VALUES (54, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 4, 54);
INSERT INTO public."Практика_студента" VALUES (55, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Советская, д. 120', 'Смирнова', 'Ольга', 'Викторовна', 11, 55);
INSERT INTO public."Практика_студента" VALUES (56, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Никитская, д. 33', 'Белов', 'Сергей', 'Николаевич', 18, 56);
INSERT INTO public."Практика_студента" VALUES (57, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Никитская, д. 33', 'Белов', 'Сергей', 'Николаевич', 7, 57);
INSERT INTO public."Практика_студента" VALUES (58, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Советская, д. 120', 'Смирнова', 'Ольга', 'Викторовна', 14, 58);
INSERT INTO public."Практика_студента" VALUES (59, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Советская, д. 120', 'Смирнова', 'Ольга', 'Викторовна', 3, 59);
INSERT INTO public."Практика_студента" VALUES (60, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Ленина, 10', 'Орлов', 'Максим', 'Юрьевич', 10, 60);
INSERT INTO public."Практика_студента" VALUES (61, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Никитская, д. 33', 'Белов', 'Сергей', 'Николаевич', 17, 61);
INSERT INTO public."Практика_студента" VALUES (62, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Ленина, 10', 'Орлов', 'Максим', 'Юрьевич', 6, 62);
INSERT INTO public."Практика_студента" VALUES (63, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 13, 63);
INSERT INTO public."Практика_студента" VALUES (64, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Советская, д. 120', 'Смирнова', 'Ольга', 'Викторовна', 2, 64);
INSERT INTO public."Практика_студента" VALUES (65, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Ленина, 10', 'Орлов', 'Максим', 'Юрьевич', 9, 65);
INSERT INTO public."Практика_студента" VALUES (66, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Советская, д. 120', 'Смирнова', 'Ольга', 'Викторовна', 16, 66);
INSERT INTO public."Практика_студента" VALUES (67, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Ленина, 10', 'Орлов', 'Максим', 'Юрьевич', 5, 67);
INSERT INTO public."Практика_студента" VALUES (68, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 12, 68);
INSERT INTO public."Практика_студента" VALUES (69, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 1, 69);
INSERT INTO public."Практика_студента" VALUES (70, '01.07.2026 - 14.07.2026', 'г. Кострома, пр. Мира, 55', 'Лебедева', 'Ирина', 'Сергеевна', 8, 70);
INSERT INTO public."Практика_студента" VALUES (71, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Галичская, д. 128', 'Федоров', 'Михаил', 'Александрович', 15, 71);
INSERT INTO public."Практика_студента" VALUES (72, '06.07.2026 - 19.07.2026', 'г. Кострома, пр. Мира, 55', 'Лебедева', 'Ирина', 'Сергеевна', 4, 72);
INSERT INTO public."Практика_студента" VALUES (73, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Никитская, д. 33', 'Белов', 'Сергей', 'Николаевич', 11, 73);
INSERT INTO public."Практика_студента" VALUES (74, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 18, 74);
INSERT INTO public."Практика_студента" VALUES (75, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Ленина, 10', 'Орлов', 'Максим', 'Юрьевич', 7, 75);
INSERT INTO public."Практика_студента" VALUES (76, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Никитская, д. 33', 'Белов', 'Сергей', 'Николаевич', 14, 76);
INSERT INTO public."Практика_студента" VALUES (77, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 3, 77);
INSERT INTO public."Практика_студента" VALUES (78, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 10, 78);
INSERT INTO public."Практика_студента" VALUES (79, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Ленина, 10', 'Орлов', 'Максим', 'Юрьевич', 17, 79);
INSERT INTO public."Практика_студента" VALUES (80, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 6, 80);
INSERT INTO public."Практика_студента" VALUES (81, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 13, 81);
INSERT INTO public."Практика_студента" VALUES (82, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Ленина, 10', 'Орлов', 'Максим', 'Юрьевич', 2, 82);
INSERT INTO public."Практика_студента" VALUES (83, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 9, 83);
INSERT INTO public."Практика_студента" VALUES (84, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Никитская, д. 33', 'Белов', 'Сергей', 'Николаевич', 16, 84);
INSERT INTO public."Практика_студента" VALUES (85, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Никитская, д. 33', 'Белов', 'Сергей', 'Николаевич', 5, 85);
INSERT INTO public."Практика_студента" VALUES (86, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Никитская, д. 33', 'Белов', 'Сергей', 'Николаевич', 12, 86);
INSERT INTO public."Практика_студента" VALUES (87, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Никитская, д. 33', 'Белов', 'Сергей', 'Николаевич', 1, 87);
INSERT INTO public."Практика_студента" VALUES (88, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 8, 88);
INSERT INTO public."Практика_студента" VALUES (89, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Никитская, д. 33', 'Белов', 'Сергей', 'Николаевич', 15, 89);
INSERT INTO public."Практика_студента" VALUES (90, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Никитская, д. 33', 'Белов', 'Сергей', 'Николаевич', 4, 90);
INSERT INTO public."Практика_студента" VALUES (91, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Никитская, д. 33', 'Белов', 'Сергей', 'Николаевич', 11, 91);
INSERT INTO public."Практика_студента" VALUES (92, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 18, 92);
INSERT INTO public."Практика_студента" VALUES (93, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Ленина, д. 20', 'Кузнецов', 'Артем', 'Дмитриевич', 7, 93);
INSERT INTO public."Практика_студента" VALUES (94, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Ленина, 10', 'Громов', 'Игорь', 'Олегович', 14, 94);
INSERT INTO public."Практика_студента" VALUES (95, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Ленина, 10', 'Громов', 'Игорь', 'Олегович', 3, 95);
INSERT INTO public."Практика_студента" VALUES (96, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Ленина, 10', 'Громов', 'Игорь', 'Олегович', 10, 96);
INSERT INTO public."Практика_студента" VALUES (97, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Ленина, 10', 'Громов', 'Игорь', 'Олегович', 17, 97);
INSERT INTO public."Практика_студента" VALUES (98, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Галичская, д. 128', 'Федоров', 'Михаил', 'Александрович', 6, 98);
INSERT INTO public."Практика_студента" VALUES (99, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Никитская, д. 33', 'Белов', 'Сергей', 'Николаевич', 13, 99);
INSERT INTO public."Практика_студента" VALUES (100, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Галичская, д. 128', 'Федоров', 'Михаил', 'Александрович', 2, 100);
INSERT INTO public."Практика_студента" VALUES (102, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Никитская, д. 33', 'Белов', 'Сергей', 'Николаевич', 16, 102);
INSERT INTO public."Практика_студента" VALUES (103, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Ленина, 10', 'Громов', 'Игорь', 'Олегович', 5, 103);
INSERT INTO public."Практика_студента" VALUES (104, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Ленина, 10', 'Громов', 'Игорь', 'Олегович', 12, 104);
INSERT INTO public."Практика_студента" VALUES (105, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Никитская, д. 33', 'Белов', 'Сергей', 'Николаевич', 1, 105);
INSERT INTO public."Практика_студента" VALUES (106, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Никитская, д. 33', 'Белов', 'Сергей', 'Николаевич', 8, 106);
INSERT INTO public."Практика_студента" VALUES (107, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Никитская, д. 33', 'Белов', 'Сергей', 'Николаевич', 15, 107);
INSERT INTO public."Практика_студента" VALUES (108, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Ленина, 10', 'Громов', 'Игорь', 'Олегович', 4, 108);
INSERT INTO public."Практика_студента" VALUES (109, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Галичская, д. 128', 'Федоров', 'Михаил', 'Александрович', 11, 109);
INSERT INTO public."Практика_студента" VALUES (110, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Ленина, 10', 'Громов', 'Игорь', 'Олегович', 18, 110);
INSERT INTO public."Практика_студента" VALUES (111, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Никитская, д. 33', 'Белов', 'Сергей', 'Николаевич', 7, 111);
INSERT INTO public."Практика_студента" VALUES (112, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Ленина, 10', 'Громов', 'Игорь', 'Олегович', 14, 112);
INSERT INTO public."Практика_студента" VALUES (113, '06.07.2026 - 19.07.2026', 'г. Кострома, ул. Никитская, д. 33', 'Белов', 'Сергей', 'Николаевич', 3, 113);
INSERT INTO public."Практика_студента" VALUES (114, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Ленина, 10', 'Громов', 'Игорь', 'Олегович', 10, 114);
INSERT INTO public."Практика_студента" VALUES (115, '13.07.2026 - 26.07.2026', 'г. Кострома, ул. Ленина, 10', 'Громов', 'Игорь', 'Олегович', 17, 115);
INSERT INTO public."Практика_студента" VALUES (101, '01.07.2026 - 14.07.2026', 'г. Кострома, ул. Никитская, д. 33', '', 'Сергей', 'Николаевич', 9, 101);


--
-- Data for Name: Результат; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Результат" VALUES (1, 'Отлично справился', 'отлично', 1);
INSERT INTO public."Результат" VALUES (2, 'Идеальная архитектура', 'отлично', 2);
INSERT INTO public."Результат" VALUES (3, 'Есть недочеты', 'хорошо', 3);
INSERT INTO public."Результат" VALUES (4, 'Успешно', 'хорошо', 4);
INSERT INTO public."Результат" VALUES (5, 'Понятное ТЗ', 'отлично', 5);
INSERT INTO public."Результат" VALUES (6, 'Проявил себя старательным и ответственным практикантом. Основные технические задания реализованы качественно.', 'Хорошо', 6);
INSERT INTO public."Результат" VALUES (7, 'Проявил себя старательным и ответственным практикантом. Основные технические задания реализованы качественно.', 'Хорошо', 7);
INSERT INTO public."Результат" VALUES (8, 'Успешно защитил отчет по практике, показал умение работать в команде и грамотно аргументировать инженерные решения.', 'Отлично', 8);
INSERT INTO public."Результат" VALUES (9, 'Отличные практические навыки, ответственность и проактивность. Задание выполнено в полном объеме без замечаний.', 'Отлично', 9);
INSERT INTO public."Результат" VALUES (10, 'Успешно защитил отчет по практике, показал умение работать в команде и грамотно аргументировать инженерные решения.', 'Отлично', 10);
INSERT INTO public."Результат" VALUES (11, 'Студент проявил высокий уровень теоретической подготовки и глубокое понимание предметной области. Все задачи выполнены точно в срок.', 'Отлично', 11);
INSERT INTO public."Результат" VALUES (12, 'Студент проявил высокий уровень теоретической подготовки и глубокое понимание предметной области. Все задачи выполнены точно в срок.', 'Отлично', 12);
INSERT INTO public."Результат" VALUES (13, 'Успешно защитил отчет по практике, показал умение работать в команде и грамотно аргументировать инженерные решения.', 'Отлично', 13);
INSERT INTO public."Результат" VALUES (14, 'Студент проявил высокий уровень теоретической подготовки и глубокое понимание предметной области. Все задачи выполнены точно в срок.', 'Отлично', 14);
INSERT INTO public."Результат" VALUES (15, 'Программу практики освоил в минимально необходимом объеме. Наблюдались незначительные задержки в сдаче этапов задания.', 'Удовлетворительно', 15);
INSERT INTO public."Результат" VALUES (16, 'Хороший уровень знаний. Возникающие в ходе работы трудности успешно преодолевал после консультаций с наставником.', 'Хорошо', 16);
INSERT INTO public."Результат" VALUES (17, 'Продемонстрировал уверенное владение современными инструментами разработки и способность быстро разбираться в незнакомой кодовой базе.', 'Отлично', 17);
INSERT INTO public."Результат" VALUES (18, 'Поставленные задачи решены в срок, отчетная документация оформлена в соответствии с требованиями программы практики.', 'Хорошо', 18);
INSERT INTO public."Результат" VALUES (19, 'Продемонстрировал уверенное владение современными инструментами разработки и способность быстро разбираться в незнакомой кодовой базе.', 'Отлично', 19);
INSERT INTO public."Результат" VALUES (20, 'Хороший уровень знаний. Возникающие в ходе работы трудности успешно преодолевал после консультаций с наставником.', 'Хорошо', 20);
INSERT INTO public."Результат" VALUES (21, 'Хороший уровень знаний. Возникающие в ходе работы трудности успешно преодолевал после консультаций с наставником.', 'Хорошо', 21);
INSERT INTO public."Результат" VALUES (22, 'Проявил себя старательным и ответственным практикантом. Основные технические задания реализованы качественно.', 'Хорошо', 22);
INSERT INTO public."Результат" VALUES (23, 'Успешно защитил отчет по практике, показал умение работать в команде и грамотно аргументировать инженерные решения.', 'Отлично', 23);
INSERT INTO public."Результат" VALUES (24, 'Отличные практические навыки, ответственность и проактивность. Задание выполнено в полном объеме без замечаний.', 'Отлично', 24);
INSERT INTO public."Результат" VALUES (25, 'Хороший уровень знаний. Возникающие в ходе работы трудности успешно преодолевал после консультаций с наставником.', 'Хорошо', 25);
INSERT INTO public."Результат" VALUES (26, 'Студент проявил высокий уровень теоретической подготовки и глубокое понимание предметной области. Все задачи выполнены точно в срок.', 'Отлично', 26);
INSERT INTO public."Результат" VALUES (27, 'Поставленные задачи решены в срок, отчетная документация оформлена в соответствии с требованиями программы практики.', 'Хорошо', 27);
INSERT INTO public."Результат" VALUES (28, 'Продемонстрировал уверенное владение современными инструментами разработки и способность быстро разбираться в незнакомой кодовой базе.', 'Отлично', 28);
INSERT INTO public."Результат" VALUES (29, 'Поставленные задачи решены в срок, отчетная документация оформлена в соответствии с требованиями программы практики.', 'Хорошо', 29);
INSERT INTO public."Результат" VALUES (30, 'Хороший уровень знаний. Возникающие в ходе работы трудности успешно преодолевал после консультаций с наставником.', 'Хорошо', 30);
INSERT INTO public."Результат" VALUES (31, 'Продемонстрировал уверенное владение современными инструментами разработки и способность быстро разбираться в незнакомой кодовой базе.', 'Отлично', 31);
INSERT INTO public."Результат" VALUES (32, 'Успешно защитил отчет по практике, показал умение работать в команде и грамотно аргументировать инженерные решения.', 'Отлично', 32);
INSERT INTO public."Результат" VALUES (33, 'Хороший уровень знаний. Возникающие в ходе работы трудности успешно преодолевал после консультаций с наставником.', 'Хорошо', 33);
INSERT INTO public."Результат" VALUES (34, 'Отличные практические навыки, ответственность и проактивность. Задание выполнено в полном объеме без замечаний.', 'Отлично', 34);
INSERT INTO public."Результат" VALUES (35, 'Успешно защитил отчет по практике, показал умение работать в команде и грамотно аргументировать инженерные решения.', 'Отлично', 35);
INSERT INTO public."Результат" VALUES (36, 'Успешно защитил отчет по практике, показал умение работать в команде и грамотно аргументировать инженерные решения.', 'Отлично', 36);
INSERT INTO public."Результат" VALUES (37, 'Продемонстрировал уверенное владение современными инструментами разработки и способность быстро разбираться в незнакомой кодовой базе.', 'Отлично', 37);
INSERT INTO public."Результат" VALUES (38, 'Продемонстрировал уверенное владение современными инструментами разработки и способность быстро разбираться в незнакомой кодовой базе.', 'Отлично', 38);
INSERT INTO public."Результат" VALUES (39, 'Хороший уровень знаний. Возникающие в ходе работы трудности успешно преодолевал после консультаций с наставником.', 'Хорошо', 39);
INSERT INTO public."Результат" VALUES (40, 'Студент проявил высокий уровень теоретической подготовки и глубокое понимание предметной области. Все задачи выполнены точно в срок.', 'Отлично', 40);
INSERT INTO public."Результат" VALUES (41, 'Отличные практические навыки, ответственность и проактивность. Задание выполнено в полном объеме без замечаний.', 'Отлично', 41);
INSERT INTO public."Результат" VALUES (42, 'Отличные практические навыки, ответственность и проактивность. Задание выполнено в полном объеме без замечаний.', 'Отлично', 42);
INSERT INTO public."Результат" VALUES (43, 'Успешно защитил отчет по практике, показал умение работать в команде и грамотно аргументировать инженерные решения.', 'Отлично', 43);
INSERT INTO public."Результат" VALUES (44, 'Успешно защитил отчет по практике, показал умение работать в команде и грамотно аргументировать инженерные решения.', 'Отлично', 44);
INSERT INTO public."Результат" VALUES (45, 'Продемонстрировал уверенное владение современными инструментами разработки и способность быстро разбираться в незнакомой кодовой базе.', 'Отлично', 45);
INSERT INTO public."Результат" VALUES (46, 'Поставленные задачи решены в срок, отчетная документация оформлена в соответствии с требованиями программы практики.', 'Хорошо', 46);
INSERT INTO public."Результат" VALUES (47, 'Поставленные задачи решены в срок, отчетная документация оформлена в соответствии с требованиями программы практики.', 'Хорошо', 47);
INSERT INTO public."Результат" VALUES (48, 'Продемонстрировал уверенное владение современными инструментами разработки и способность быстро разбираться в незнакомой кодовой базе.', 'Отлично', 48);
INSERT INTO public."Результат" VALUES (49, 'Успешно защитил отчет по практике, показал умение работать в команде и грамотно аргументировать инженерные решения.', 'Отлично', 49);
INSERT INTO public."Результат" VALUES (50, 'Программу практики освоил в минимально необходимом объеме. Наблюдались незначительные задержки в сдаче этапов задания.', 'Удовлетворительно', 50);
INSERT INTO public."Результат" VALUES (51, 'Поставленные задачи решены в срок, отчетная документация оформлена в соответствии с требованиями программы практики.', 'Хорошо', 51);
INSERT INTO public."Результат" VALUES (52, 'Успешно защитил отчет по практике, показал умение работать в команде и грамотно аргументировать инженерные решения.', 'Отлично', 52);
INSERT INTO public."Результат" VALUES (53, 'Отличные практические навыки, ответственность и проактивность. Задание выполнено в полном объеме без замечаний.', 'Отлично', 53);
INSERT INTO public."Результат" VALUES (54, 'Поставленные задачи решены в срок, отчетная документация оформлена в соответствии с требованиями программы практики.', 'Хорошо', 54);
INSERT INTO public."Результат" VALUES (55, 'Проявил себя старательным и ответственным практикантом. Основные технические задания реализованы качественно.', 'Хорошо', 55);
INSERT INTO public."Результат" VALUES (56, 'Поставленные задачи решены в срок, отчетная документация оформлена в соответствии с требованиями программы практики.', 'Хорошо', 56);
INSERT INTO public."Результат" VALUES (57, 'Хороший уровень знаний. Возникающие в ходе работы трудности успешно преодолевал после консультаций с наставником.', 'Хорошо', 57);
INSERT INTO public."Результат" VALUES (58, 'Успешно защитил отчет по практике, показал умение работать в команде и грамотно аргументировать инженерные решения.', 'Отлично', 58);
INSERT INTO public."Результат" VALUES (59, 'Отличные практические навыки, ответственность и проактивность. Задание выполнено в полном объеме без замечаний.', 'Отлично', 59);
INSERT INTO public."Результат" VALUES (60, 'Отличные практические навыки, ответственность и проактивность. Задание выполнено в полном объеме без замечаний.', 'Отлично', 60);
INSERT INTO public."Результат" VALUES (61, 'Хороший уровень знаний. Возникающие в ходе работы трудности успешно преодолевал после консультаций с наставником.', 'Хорошо', 61);
INSERT INTO public."Результат" VALUES (62, 'Студент проявил высокий уровень теоретической подготовки и глубокое понимание предметной области. Все задачи выполнены точно в срок.', 'Отлично', 62);
INSERT INTO public."Результат" VALUES (63, 'Программу практики освоил в минимально необходимом объеме. Наблюдались незначительные задержки в сдаче этапов задания.', 'Удовлетворительно', 63);
INSERT INTO public."Результат" VALUES (64, 'Хороший уровень знаний. Возникающие в ходе работы трудности успешно преодолевал после консультаций с наставником.', 'Хорошо', 64);
INSERT INTO public."Результат" VALUES (65, 'Успешно защитил отчет по практике, показал умение работать в команде и грамотно аргументировать инженерные решения.', 'Отлично', 65);
INSERT INTO public."Результат" VALUES (66, 'Проявил себя старательным и ответственным практикантом. Основные технические задания реализованы качественно.', 'Хорошо', 66);
INSERT INTO public."Результат" VALUES (67, 'Отличные практические навыки, ответственность и проактивность. Задание выполнено в полном объеме без замечаний.', 'Отлично', 67);
INSERT INTO public."Результат" VALUES (68, 'Хороший уровень знаний. Возникающие в ходе работы трудности успешно преодолевал после консультаций с наставником.', 'Хорошо', 68);
INSERT INTO public."Результат" VALUES (69, 'Продемонстрировал уверенное владение современными инструментами разработки и способность быстро разбираться в незнакомой кодовой базе.', 'Отлично', 69);
INSERT INTO public."Результат" VALUES (70, 'Студент проявил высокий уровень теоретической подготовки и глубокое понимание предметной области. Все задачи выполнены точно в срок.', 'Отлично', 70);
INSERT INTO public."Результат" VALUES (71, 'Успешно защитил отчет по практике, показал умение работать в команде и грамотно аргументировать инженерные решения.', 'Отлично', 71);
INSERT INTO public."Результат" VALUES (72, 'Студент проявил высокий уровень теоретической подготовки и глубокое понимание предметной области. Все задачи выполнены точно в срок.', 'Отлично', 72);
INSERT INTO public."Результат" VALUES (73, 'Успешно защитил отчет по практике, показал умение работать в команде и грамотно аргументировать инженерные решения.', 'Отлично', 73);
INSERT INTO public."Результат" VALUES (74, 'Отличные практические навыки, ответственность и проактивность. Задание выполнено в полном объеме без замечаний.', 'Отлично', 74);
INSERT INTO public."Результат" VALUES (75, 'Продемонстрировал уверенное владение современными инструментами разработки и способность быстро разбираться в незнакомой кодовой базе.', 'Отлично', 75);
INSERT INTO public."Результат" VALUES (76, 'Продемонстрировал уверенное владение современными инструментами разработки и способность быстро разбираться в незнакомой кодовой базе.', 'Отлично', 76);
INSERT INTO public."Результат" VALUES (77, 'Хороший уровень знаний. Возникающие в ходе работы трудности успешно преодолевал после консультаций с наставником.', 'Хорошо', 77);
INSERT INTO public."Результат" VALUES (78, 'Отличные практические навыки, ответственность и проактивность. Задание выполнено в полном объеме без замечаний.', 'Отлично', 78);
INSERT INTO public."Результат" VALUES (79, 'Успешно защитил отчет по практике, показал умение работать в команде и грамотно аргументировать инженерные решения.', 'Отлично', 79);
INSERT INTO public."Результат" VALUES (80, 'Успешно защитил отчет по практике, показал умение работать в команде и грамотно аргументировать инженерные решения.', 'Отлично', 80);
INSERT INTO public."Результат" VALUES (81, 'Отличные практические навыки, ответственность и проактивность. Задание выполнено в полном объеме без замечаний.', 'Отлично', 81);
INSERT INTO public."Результат" VALUES (82, 'Программу практики освоил в минимально необходимом объеме. Наблюдались незначительные задержки в сдаче этапов задания.', 'Удовлетворительно', 82);
INSERT INTO public."Результат" VALUES (83, 'Хороший уровень знаний. Возникающие в ходе работы трудности успешно преодолевал после консультаций с наставником.', 'Хорошо', 83);
INSERT INTO public."Результат" VALUES (84, 'Отличные практические навыки, ответственность и проактивность. Задание выполнено в полном объеме без замечаний.', 'Отлично', 84);
INSERT INTO public."Результат" VALUES (85, 'Программу практики освоил в минимально необходимом объеме. Наблюдались незначительные задержки в сдаче этапов задания.', 'Удовлетворительно', 85);
INSERT INTO public."Результат" VALUES (86, 'Поставленные задачи решены в срок, отчетная документация оформлена в соответствии с требованиями программы практики.', 'Хорошо', 86);
INSERT INTO public."Результат" VALUES (87, 'Отличные практические навыки, ответственность и проактивность. Задание выполнено в полном объеме без замечаний.', 'Отлично', 87);
INSERT INTO public."Результат" VALUES (88, 'Успешно защитил отчет по практике, показал умение работать в команде и грамотно аргументировать инженерные решения.', 'Отлично', 88);
INSERT INTO public."Результат" VALUES (89, 'Программу практики освоил в минимально необходимом объеме. Наблюдались незначительные задержки в сдаче этапов задания.', 'Удовлетворительно', 89);
INSERT INTO public."Результат" VALUES (90, 'Продемонстрировал уверенное владение современными инструментами разработки и способность быстро разбираться в незнакомой кодовой базе.', 'Отлично', 90);
INSERT INTO public."Результат" VALUES (91, 'Поставленные задачи решены в срок, отчетная документация оформлена в соответствии с требованиями программы практики.', 'Хорошо', 91);
INSERT INTO public."Результат" VALUES (92, 'Успешно защитил отчет по практике, показал умение работать в команде и грамотно аргументировать инженерные решения.', 'Отлично', 92);
INSERT INTO public."Результат" VALUES (93, 'Продемонстрировал уверенное владение современными инструментами разработки и способность быстро разбираться в незнакомой кодовой базе.', 'Отлично', 93);
INSERT INTO public."Результат" VALUES (94, 'Успешно защитил отчет по практике, показал умение работать в команде и грамотно аргументировать инженерные решения.', 'Отлично', 94);
INSERT INTO public."Результат" VALUES (95, 'Программу практики освоил в минимально необходимом объеме. Наблюдались незначительные задержки в сдаче этапов задания.', 'Удовлетворительно', 95);
INSERT INTO public."Результат" VALUES (96, 'Студент проявил высокий уровень теоретической подготовки и глубокое понимание предметной области. Все задачи выполнены точно в срок.', 'Отлично', 96);
INSERT INTO public."Результат" VALUES (97, 'Продемонстрировал уверенное владение современными инструментами разработки и способность быстро разбираться в незнакомой кодовой базе.', 'Отлично', 97);
INSERT INTO public."Результат" VALUES (98, 'Успешно защитил отчет по практике, показал умение работать в команде и грамотно аргументировать инженерные решения.', 'Отлично', 98);
INSERT INTO public."Результат" VALUES (99, 'Хороший уровень знаний. Возникающие в ходе работы трудности успешно преодолевал после консультаций с наставником.', 'Хорошо', 99);
INSERT INTO public."Результат" VALUES (100, 'Студент проявил высокий уровень теоретической подготовки и глубокое понимание предметной области. Все задачи выполнены точно в срок.', 'Отлично', 100);
INSERT INTO public."Результат" VALUES (101, 'Отличные практические навыки, ответственность и проактивность. Задание выполнено в полном объеме без замечаний.', 'Отлично', 101);
INSERT INTO public."Результат" VALUES (102, 'Продемонстрировал уверенное владение современными инструментами разработки и способность быстро разбираться в незнакомой кодовой базе.', 'Отлично', 102);
INSERT INTO public."Результат" VALUES (103, 'Поставленные задачи решены в срок, отчетная документация оформлена в соответствии с требованиями программы практики.', 'Хорошо', 103);
INSERT INTO public."Результат" VALUES (104, 'Отличные практические навыки, ответственность и проактивность. Задание выполнено в полном объеме без замечаний.', 'Отлично', 104);
INSERT INTO public."Результат" VALUES (105, 'Отличные практические навыки, ответственность и проактивность. Задание выполнено в полном объеме без замечаний.', 'Отлично', 105);
INSERT INTO public."Результат" VALUES (106, 'Проявил себя старательным и ответственным практикантом. Основные технические задания реализованы качественно.', 'Хорошо', 106);
INSERT INTO public."Результат" VALUES (107, 'Отличные практические навыки, ответственность и проактивность. Задание выполнено в полном объеме без замечаний.', 'Отлично', 107);
INSERT INTO public."Результат" VALUES (108, 'Хороший уровень знаний. Возникающие в ходе работы трудности успешно преодолевал после консультаций с наставником.', 'Хорошо', 108);
INSERT INTO public."Результат" VALUES (109, 'Студент проявил высокий уровень теоретической подготовки и глубокое понимание предметной области. Все задачи выполнены точно в срок.', 'Отлично', 109);
INSERT INTO public."Результат" VALUES (110, 'Продемонстрировал уверенное владение современными инструментами разработки и способность быстро разбираться в незнакомой кодовой базе.', 'Отлично', 110);
INSERT INTO public."Результат" VALUES (111, 'Отличные практические навыки, ответственность и проактивность. Задание выполнено в полном объеме без замечаний.', 'Отлично', 111);
INSERT INTO public."Результат" VALUES (112, 'Отличные практические навыки, ответственность и проактивность. Задание выполнено в полном объеме без замечаний.', 'Отлично', 112);
INSERT INTO public."Результат" VALUES (113, 'Успешно защитил отчет по практике, показал умение работать в команде и грамотно аргументировать инженерные решения.', 'Отлично', 113);
INSERT INTO public."Результат" VALUES (114, 'Отличные практические навыки, ответственность и проактивность. Задание выполнено в полном объеме без замечаний.', 'Отлично', 114);
INSERT INTO public."Результат" VALUES (115, 'Отличные практические навыки, ответственность и проактивность. Задание выполнено в полном объеме без замечаний.', 'Отлично', 115);


--
-- Data for Name: Руководитель_от_университета; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Руководитель_от_университета" VALUES (1, 'Киприна', 'Людмила', 'Юрьевна', 4);
INSERT INTO public."Руководитель_от_университета" VALUES (2, 'Барило', 'Илья', 'Иванович', 1);
INSERT INTO public."Руководитель_от_университета" VALUES (3, 'Лустгартен', 'Юрий', 'Леонидович', 1);
INSERT INTO public."Руководитель_от_университета" VALUES (4, 'Демчинова', 'Елена', 'Александровна', 3);
INSERT INTO public."Руководитель_от_университета" VALUES (5, 'Орлов', 'Александр', 'Валерьевич', 1);
INSERT INTO public."Руководитель_от_университета" VALUES (6, 'Мозохин', 'Александр', 'Евгеньевич', 1);
INSERT INTO public."Руководитель_от_университета" VALUES (7, 'Дорохова', 'Жана', 'Викторовна', 3);
INSERT INTO public."Руководитель_от_университета" VALUES (8, 'Денисов', 'Артем', 'Руфимович', 2);
INSERT INTO public."Руководитель_от_университета" VALUES (9, 'Панин', 'Игорь', 'Григорьевич', 2);
INSERT INTO public."Руководитель_от_университета" VALUES (10, 'Красавина', 'Мария', 'Сергеевна', 1);
INSERT INTO public."Руководитель_от_университета" VALUES (11, 'Прядкина', 'Нина', 'Олеговна', 1);
INSERT INTO public."Руководитель_от_университета" VALUES (12, 'Смирнова', 'Светлана', 'Геннадьевна', 1);
INSERT INTO public."Руководитель_от_университета" VALUES (13, 'Исаева', 'Мария', 'Владимировна', 1);
INSERT INTO public."Руководитель_от_университета" VALUES (14, 'Дружинина', 'Анна', 'Григорьевна', 1);
INSERT INTO public."Руководитель_от_университета" VALUES (15, 'Кириллова', 'Екатерина', 'Сергеевна', 1);
INSERT INTO public."Руководитель_от_университета" VALUES (16, 'Чувиляева', 'Александра', 'Сергеевна', 1);
INSERT INTO public."Руководитель_от_университета" VALUES (17, 'Логинова', 'Анна', 'Александровна', 5);
INSERT INTO public."Руководитель_от_университета" VALUES (18, '', 'Ольга', 'Антоновна', 5);


--
-- Data for Name: Статус_договора; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Статус_договора" VALUES (1, 'Действующий');
INSERT INTO public."Статус_договора" VALUES (2, 'Завершен');


--
-- Data for Name: Статус_задания; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Статус_задания" VALUES (1, 'Выдано');
INSERT INTO public."Статус_задания" VALUES (2, 'В работе');
INSERT INTO public."Статус_задания" VALUES (3, 'Завершено');


--
-- Data for Name: Статус_заявки; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Статус_заявки" VALUES (1, 'Новая');
INSERT INTO public."Статус_заявки" VALUES (2, 'На рассмотрении');
INSERT INTO public."Статус_заявки" VALUES (3, 'Одобрена');
INSERT INTO public."Статус_заявки" VALUES (4, 'Отклонена');
INSERT INTO public."Статус_заявки" VALUES (5, 'Отозвана');


--
-- Data for Name: Студент; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Студент" VALUES (1, 'Смирнов', 'Даниил', 'Павлович', '2005-01-10', '24-ИСбо-1');
INSERT INTO public."Студент" VALUES (2, 'Смирнов', 'Даниил', 'Павлович', '2005-01-10', '24-ИСбо-1');
INSERT INTO public."Студент" VALUES (3, 'Смирнов', 'Макар', 'Андреевич', '2005-08-15', '24-ИСбо-1');
INSERT INTO public."Студент" VALUES (4, 'Иванов', 'Максим', 'Сергеевич', '2004-12-05', '23-ИСбо-2');
INSERT INTO public."Студент" VALUES (5, 'Петрова', 'Алиса', 'Игоревна', '2005-03-22', '24-ИСбо-1');
INSERT INTO public."Студент" VALUES (6, 'Соколов', 'Дмитрий', 'Николаевич', '2004-07-18', '23-ИСбо-2');
INSERT INTO public."Студент" VALUES (7, 'Иванов', 'Степан', 'Николаевич', '2008-04-05', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (8, 'Романова', 'Ольга', 'Викторовна', '2008-10-14', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (9, 'Лебедев', 'Дмитрий', 'Сергеевич', '2008-09-07', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (10, 'Захарова', 'Ульяна', 'Романовна', '2008-08-19', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (11, 'Смирнов', 'Федор', 'Даниилович', '2009-06-09', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (12, 'Пономарев', 'Тимофей', 'Артемович', '2008-07-04', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (13, 'Беляев', 'Денис', 'Николаевич', '2008-12-15', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (14, 'Белов', 'Максим', 'Викторович', '2008-11-20', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (15, 'Тарасова', 'Кристина', 'Дмитриевна', '2008-01-22', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (16, 'Богданов', 'Максим', 'Сергеевич', '2008-07-09', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (17, 'Никитин', 'Никита', 'Даниилович', '2008-06-07', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (18, 'Захарова', 'Ирина', 'Константиновна', '2008-10-21', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (19, 'Королев', 'Матвей', 'Даниилович', '2009-07-09', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (20, 'Яковлева', 'Диана', 'Викторовна', '2008-11-11', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (21, 'Попова', 'Екатерина', 'Михайловна', '2008-07-09', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (22, 'Баранов', 'Антон', 'Андреевич', '2008-11-16', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (23, 'Сорокин', 'Владислав', 'Иванович', '2008-03-08', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (24, 'Кузьмина', 'Ксения', 'Евгеньевна', '2009-10-13', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (25, 'Морозов', 'Ярослав', 'Игоревич', '2008-01-28', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (26, 'Яковлев', 'Даниил', 'Романович', '2008-07-13', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (27, 'Андреев', 'Ярослав', 'Николаевич', '2008-11-24', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (28, 'Кузьмин', 'Федор', 'Николаевич', '2008-02-10', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (29, 'Андреев', 'Александр', 'Николаевич', '2008-09-04', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (30, 'Воробьева', 'Светлана', 'Константиновна', '2008-03-12', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (31, 'Кузьмина', 'Татьяна', 'Олеговна', '2008-10-11', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (32, 'Новиков', 'Олег', 'Владимирович', '2008-04-02', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (33, 'Баранов', 'Максим', 'Максимович', '2009-02-25', '26-ИСбо-1');
INSERT INTO public."Студент" VALUES (34, 'Морозов', 'Иван', 'Игоревич', '2008-05-17', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (35, 'Киселева', 'Полина', 'Викторовна', '2008-12-10', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (36, 'Сергеев', 'Павел', 'Владимирович', '2009-09-15', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (37, 'Павлов', 'Максим', 'Андреевич', '2008-10-18', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (38, 'Павлов', 'Александр', 'Максимович', '2008-04-03', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (39, 'Михайлова', 'Мария', 'Олеговна', '2008-05-22', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (40, 'Кузьмин', 'Иван', 'Евгеньевич', '2009-04-26', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (41, 'Орлов', 'Дмитрий', 'Артемович', '2008-11-14', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (42, 'Орлов', 'Владислав', 'Михайлович', '2008-01-13', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (43, 'Козлова', 'Екатерина', 'Дмитриевна', '2008-09-15', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (44, 'Соловьев', 'Илья', 'Денисович', '2008-02-15', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (45, 'Кудрявцева', 'Алиса', 'Михайловна', '2008-02-25', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (46, 'Волкова', 'Алена', 'Игоревна', '2009-04-28', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (47, 'Попов', 'Даниил', 'Павлович', '2008-07-09', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (48, 'Андреева', 'Александра', 'Романовна', '2009-03-07', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (49, 'Попов', 'Кирилл', 'Викторович', '2008-12-11', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (50, 'Куликов', 'Егор', 'Олегович', '2008-01-17', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (51, 'Соловьев', 'Максим', 'Антонович', '2008-11-28', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (52, 'Новиков', 'Антон', 'Евгеньевич', '2008-10-20', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (53, 'Лебедев', 'Сергей', 'Евгеньевич', '2008-05-07', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (54, 'Федорова', 'Екатерина', 'Николаевна', '2009-03-22', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (55, 'Андреев', 'Тимофей', 'Максимович', '2008-08-20', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (56, 'Козлова', 'Мария', 'Викторовна', '2008-09-09', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (57, 'Беляев', 'Антон', 'Максимович', '2008-06-10', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (58, 'Никитин', 'Марк', 'Алексеевич', '2008-11-27', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (59, 'Сергеев', 'Артем', 'Иванович', '2008-02-04', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (60, 'Петрова', 'Ксения', 'Алексеевна', '2008-12-11', '26-ИСбо-2');
INSERT INTO public."Студент" VALUES (61, 'Яковлев', 'Виктор', 'Николаевич', '2009-05-28', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (62, 'Яковлев', 'Сергей', 'Николаевич', '2008-01-11', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (63, 'Яковлева', 'Ксения', 'Данииловна', '2009-09-23', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (64, 'Смирнов', 'Артем', 'Максимович', '2008-09-02', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (65, 'Куликова', 'Ульяна', 'Ивановна', '2009-03-02', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (66, 'Лазарев', 'Виктор', 'Михайлович', '2008-04-22', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (67, 'Козлов', 'Никита', 'Викторович', '2009-10-24', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (68, 'Семенов', 'Виктор', 'Даниилович', '2008-07-01', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (69, 'Михайлов', 'Георгий', 'Романович', '2008-05-06', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (70, 'Козлова', 'Вероника', 'Михайловна', '2009-04-07', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (71, 'Андреева', 'Дарья', 'Алексеевна', '2008-04-01', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (72, 'Комарова', 'Варвара', 'Николаевна', '2008-05-12', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (73, 'Комаров', 'Глеб', 'Викторович', '2008-01-04', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (74, 'Голубева', 'Виктория', 'Евгеньевна', '2008-01-04', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (75, 'Беляев', 'Степан', 'Андреевич', '2009-10-17', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (76, 'Баранов', 'Дмитрий', 'Николаевич', '2008-12-14', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (77, 'Медведев', 'Марк', 'Дмитриевич', '2008-07-03', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (78, 'Михайлова', 'Маргарита', 'Андреевна', '2008-12-10', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (79, 'Сергеев', 'Сергей', 'Андреевич', '2009-12-10', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (80, 'Васильев', 'Сергей', 'Павлович', '2008-10-19', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (81, 'Кудрявцев', 'Арсений', 'Александрович', '2008-05-07', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (82, 'Куликов', 'Денис', 'Константинович', '2008-08-15', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (83, 'Зайцев', 'Ярослав', 'Игоревич', '2008-11-03', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (84, 'Сергеев', 'Павел', 'Антонович', '2008-02-27', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (85, 'Семенова', 'Елизавета', 'Алексеевна', '2008-04-05', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (86, 'Семенов', 'Егор', 'Антонович', '2008-08-14', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (87, 'Баранова', 'Полина', 'Павловна', '2009-07-08', '26-ИСбо-3');
INSERT INTO public."Студент" VALUES (88, 'Захаров', 'Александр', 'Артемович', '2009-04-06', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (89, 'Захарова', 'Милана', 'Денисовна', '2008-09-08', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (90, 'Новикова', 'Валерия', 'Ивановна', '2009-11-17', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (91, 'Алексеева', 'Варвара', 'Денисовна', '2009-09-15', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (92, 'Ковалева', 'Валерия', 'Николаевна', '2008-11-09', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (93, 'Титова', 'Анастасия', 'Константиновна', '2008-05-15', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (94, 'Богданов', 'Матвей', 'Николаевич', '2008-06-18', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (95, 'Петров', 'Матвей', 'Павлович', '2008-12-07', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (96, 'Орлов', 'Тимофей', 'Викторович', '2009-07-02', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (97, 'Орлов', 'Андрей', 'Евгеньевич', '2008-10-13', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (98, 'Беляев', 'Роман', 'Павлович', '2009-09-24', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (99, 'Алексеева', 'Наталья', 'Сергеевна', '2009-04-09', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (100, 'Иванов', 'Андрей', 'Андреевич', '2009-12-06', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (101, 'Морозова', 'Маргарита', 'Викторовна', '2008-07-19', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (102, 'Иванов', 'Максим', 'Константинович', '2009-03-28', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (103, 'Попов', 'Илья', 'Павлович', '2008-04-15', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (104, 'Пономарев', 'Антон', 'Павлович', '2008-07-09', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (105, 'Ковалева', 'София', 'Викторовна', '2008-06-08', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (106, 'Сорокина', 'Анна', 'Александровна', '2008-04-27', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (107, 'Петров', 'Матвей', 'Иванович', '2009-11-04', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (108, 'Зайцев', 'Владислав', 'Николаевич', '2008-03-20', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (109, 'Герасимов', 'Константин', 'Артемович', '2008-05-04', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (110, 'Воробьев', 'Кирилл', 'Павлович', '2009-12-07', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (111, 'Захаров', 'Арсений', 'Константинович', '2008-02-23', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (112, 'Романова', 'Маргарита', 'Артемовна', '2008-06-18', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (113, 'Тарасов', 'Максим', 'Олегович', '2008-01-28', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (114, 'Ильин', 'Артем', 'Романович', '2008-11-27', '26-ИСбо-4');
INSERT INTO public."Студент" VALUES (115, 'Петров', 'Сергей', 'Даниилович', '2008-10-26', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (116, 'Ковалева', 'Валерия', 'Романовна', '2008-06-28', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (117, 'Лебедев', 'Илья', 'Денисович', '2008-08-19', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (118, 'Белов', 'Тимофей', 'Александрович', '2009-06-06', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (119, 'Беляев', 'Георгий', 'Николаевич', '2008-05-20', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (120, 'Виноградова', 'Ульяна', 'Александровна', '2008-02-08', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (121, 'Ильина', 'Ульяна', 'Сергеевна', '2009-11-23', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (122, 'Лазарев', 'Александр', 'Максимович', '2008-04-13', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (123, 'Воробьева', 'Елизавета', 'Евгеньевна', '2008-08-18', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (124, 'Киселев', 'Степан', 'Викторович', '2008-06-23', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (125, 'Воробьев', 'Илья', 'Сергеевич', '2008-12-07', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (126, 'Герасимов', 'Марк', 'Даниилович', '2008-04-24', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (127, 'Королев', 'Кирилл', 'Олегович', '2008-02-27', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (128, 'Павлов', 'Никита', 'Даниилович', '2008-01-23', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (129, 'Виноградов', 'Михаил', 'Михайлович', '2008-12-05', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (130, 'Пономарев', 'Егор', 'Артемович', '2008-10-10', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (131, 'Макаров', 'Тимофей', 'Даниилович', '2008-05-28', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (132, 'Ершов', 'Максим', 'Павлович', '2009-02-19', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (133, 'Попов', 'Иван', 'Иванович', '2008-02-08', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (134, 'Пономарев', 'Сергей', 'Антонович', '2008-09-13', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (135, 'Макаров', 'Роман', 'Евгеньевич', '2009-05-19', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (136, 'Степанов', 'Степан', 'Артемович', '2008-11-07', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (137, 'Лебедев', 'Даниил', 'Сергеевич', '2008-09-03', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (138, 'Орлов', 'Владислав', 'Антонович', '2009-05-02', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (139, 'Борисов', 'Роман', 'Денисович', '2008-11-08', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (140, 'Яковлева', 'Кристина', 'Дмитриевна', '2009-02-18', '26-ПМбо-1');
INSERT INTO public."Студент" VALUES (141, 'Петров', 'Олег', 'Николаевич', '2008-02-02', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (142, 'Воробьев', 'Денис', 'Евгеньевич', '2008-08-04', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (143, 'Воробьев', 'Константин', 'Павлович', '2008-09-18', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (144, 'Лебедев', 'Денис', 'Михайлович', '2009-12-11', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (145, 'Иванов', 'Максим', 'Сергеевич', '2008-11-27', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (146, 'Кузнецов', 'Федор', 'Даниилович', '2009-09-21', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (147, 'Виноградов', 'Даниил', 'Евгеньевич', '2009-11-27', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (148, 'Лебедев', 'Егор', 'Владимирович', '2009-06-11', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (149, 'Волкова', 'Варвара', 'Романовна', '2009-05-22', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (150, 'Кудрявцева', 'Анна', 'Денисовна', '2008-06-09', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (151, 'Григорьев', 'Андрей', 'Олегович', '2008-11-28', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (152, 'Орлов', 'Михаил', 'Дмитриевич', '2008-10-25', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (153, 'Макаров', 'Федор', 'Михайлович', '2008-05-18', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (154, 'Богданов', 'Владислав', 'Игоревич', '2008-01-21', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (155, 'Семенов', 'Константин', 'Даниилович', '2008-09-01', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (156, 'Лебедев', 'Матвей', 'Артемович', '2009-02-21', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (157, 'Ильина', 'Ирина', 'Алексеевна', '2008-07-27', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (158, 'Ковалев', 'Матвей', 'Денисович', '2008-07-07', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (159, 'Гусева', 'Ольга', 'Ивановна', '2008-05-25', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (160, 'Орлова', 'Варвара', 'Олеговна', '2008-01-10', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (161, 'Куликова', 'Кристина', 'Игоревна', '2008-08-18', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (162, 'Михайлов', 'Марк', 'Викторович', '2009-08-11', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (163, 'Захарова', 'Екатерина', 'Евгеньевна', '2009-04-28', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (164, 'Кузнецова', 'Варвара', 'Игоревна', '2009-07-22', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (165, 'Сорокина', 'Ева', 'Игоревна', '2008-03-17', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (166, 'Михайлова', 'Елена', 'Артемовна', '2009-02-17', '26-ИБбо-1');
INSERT INTO public."Студент" VALUES (167, 'Смирнова', 'Ольга', 'Ивановна', '2008-11-05', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (168, 'Лазарев', 'Илья', 'Андреевич', '2008-11-03', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (169, 'Романова', 'Елена', 'Викторовна', '2008-06-21', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (170, 'Ильина', 'Елена', 'Викторовна', '2007-10-03', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (171, 'Романов', 'Олег', 'Алексеевич', '2007-12-03', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (172, 'Козлов', 'Федор', 'Константинович', '2007-08-06', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (173, 'Иванова', 'Анна', 'Андреевна', '2007-05-12', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (174, 'Петров', 'Матвей', 'Олегович', '2008-10-22', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (175, 'Волкова', 'Виктория', 'Максимовна', '2008-10-22', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (176, 'Куликов', 'Иван', 'Сергеевич', '2008-11-09', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (177, 'Сергеев', 'Александр', 'Денисович', '2007-11-18', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (178, 'Макаров', 'Никита', 'Евгеньевич', '2007-11-14', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (179, 'Андреева', 'Елена', 'Алексеевна', '2007-07-28', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (180, 'Семенов', 'Андрей', 'Евгеньевич', '2007-10-10', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (181, 'Богданова', 'София', 'Павловна', '2007-01-19', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (182, 'Попова', 'Ирина', 'Антоновна', '2008-05-25', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (183, 'Алексеева', 'Юлия', 'Владимировна', '2007-11-07', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (184, 'Романов', 'Федор', 'Иванович', '2007-11-21', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (185, 'Лазарев', 'Владислав', 'Михайлович', '2007-12-05', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (186, 'Богданов', 'Тимофей', 'Романович', '2007-04-05', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (187, 'Тарасова', 'Милана', 'Олеговна', '2007-03-09', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (188, 'Ковалева', 'Юлия', 'Алексеевна', '2007-02-15', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (189, 'Петрова', 'Татьяна', 'Сергеевна', '2008-09-12', '25-ИСбо-1');
INSERT INTO public."Студент" VALUES (190, 'Комаров', 'Александр', 'Николаевич', '2007-08-12', '25-ИСбо-2');
INSERT INTO public."Студент" VALUES (191, 'Романова', 'Ксения', 'Евгеньевна', '2008-11-12', '25-ИСбо-2');
INSERT INTO public."Студент" VALUES (192, 'Павлов', 'Егор', 'Александрович', '2007-10-08', '25-ИСбо-2');
INSERT INTO public."Студент" VALUES (193, 'Яковлев', 'Арсений', 'Денисович', '2007-11-14', '25-ИСбо-2');
INSERT INTO public."Студент" VALUES (194, 'Кузнецов', 'Михаил', 'Алексеевич', '2008-02-04', '25-ИСбо-2');
INSERT INTO public."Студент" VALUES (195, 'Кузьмин', 'Иван', 'Павлович', '2008-06-22', '25-ИСбо-2');
INSERT INTO public."Студент" VALUES (196, 'Королев', 'Иван', 'Романович', '2007-08-20', '25-ИСбо-2');
INSERT INTO public."Студент" VALUES (197, 'Виноградов', 'Михаил', 'Владимирович', '2007-08-15', '25-ИСбо-2');
INSERT INTO public."Студент" VALUES (198, 'Тарасова', 'Алиса', 'Владимировна', '2007-01-13', '25-ИСбо-2');
INSERT INTO public."Студент" VALUES (199, 'Новиков', 'Виктор', 'Денисович', '2007-11-07', '25-ИСбо-2');
INSERT INTO public."Студент" VALUES (200, 'Алексеев', 'Александр', 'Михайлович', '2007-04-05', '25-ИСбо-2');
INSERT INTO public."Студент" VALUES (201, 'Зайцева', 'Мария', 'Викторовна', '2007-10-07', '25-ИСбо-2');
INSERT INTO public."Студент" VALUES (202, 'Павлова', 'Варвара', 'Ивановна', '2007-05-28', '25-ИСбо-2');
INSERT INTO public."Студент" VALUES (203, 'Морозова', 'Ульяна', 'Николаевна', '2007-02-22', '25-ИСбо-2');
INSERT INTO public."Студент" VALUES (204, 'Морозова', 'София', 'Владимировна', '2007-10-11', '25-ИСбо-2');
INSERT INTO public."Студент" VALUES (205, 'Голубев', 'Михаил', 'Иванович', '2008-09-04', '25-ИСбо-2');
INSERT INTO public."Студент" VALUES (206, 'Ковалева', 'Валерия', 'Владимировна', '2007-08-17', '25-ИСбо-2');
INSERT INTO public."Студент" VALUES (207, 'Степанов', 'Михаил', 'Олегович', '2007-08-21', '25-ИСбо-2');
INSERT INTO public."Студент" VALUES (208, 'Попова', 'Анастасия', 'Павловна', '2008-11-04', '25-ИСбо-2');
INSERT INTO public."Студент" VALUES (209, 'Макаров', 'Максим', 'Максимович', '2007-10-05', '25-ИСбо-2');
INSERT INTO public."Студент" VALUES (210, 'Виноградов', 'Денис', 'Константинович', '2007-07-20', '25-ИСбо-2');
INSERT INTO public."Студент" VALUES (211, 'Андреев', 'Ярослав', 'Антонович', '2008-02-26', '25-ИСбо-2');
INSERT INTO public."Студент" VALUES (212, 'Сорокина', 'Арина', 'Викторовна', '2007-07-15', '25-ИСбо-3');
INSERT INTO public."Студент" VALUES (213, 'Орлова', 'Варвара', 'Денисовна', '2008-07-24', '25-ИСбо-3');
INSERT INTO public."Студент" VALUES (214, 'Киселев', 'Тимофей', 'Николаевич', '2007-03-22', '25-ИСбо-3');
INSERT INTO public."Студент" VALUES (215, 'Соколова', 'Мария', 'Максимовна', '2007-07-04', '25-ИСбо-3');
INSERT INTO public."Студент" VALUES (216, 'Тарасова', 'Юлия', 'Ивановна', '2007-10-18', '25-ИСбо-3');
INSERT INTO public."Студент" VALUES (217, 'Сергеев', 'Артем', 'Романович', '2007-11-25', '25-ИСбо-3');
INSERT INTO public."Студент" VALUES (218, 'Королев', 'Михаил', 'Алексеевич', '2007-06-04', '25-ИСбо-3');
INSERT INTO public."Студент" VALUES (219, 'Зайцев', 'Иван', 'Игоревич', '2007-02-12', '25-ИСбо-3');
INSERT INTO public."Студент" VALUES (220, 'Тарасова', 'Алиса', 'Николаевна', '2007-07-28', '25-ИСбо-3');
INSERT INTO public."Студент" VALUES (221, 'Григорьев', 'Арсений', 'Антонович', '2007-10-22', '25-ИСбо-3');
INSERT INTO public."Студент" VALUES (222, 'Виноградова', 'София', 'Данииловна', '2007-12-25', '25-ИСбо-3');
INSERT INTO public."Студент" VALUES (223, 'Михайлов', 'Никита', 'Александрович', '2007-03-19', '25-ИСбо-3');
INSERT INTO public."Студент" VALUES (224, 'Соколова', 'Ева', 'Константиновна', '2007-02-24', '25-ИСбо-3');
INSERT INTO public."Студент" VALUES (225, 'Белов', 'Сергей', 'Денисович', '2007-03-12', '25-ИСбо-3');
INSERT INTO public."Студент" VALUES (226, 'Федоров', 'Федор', 'Евгеньевич', '2007-01-05', '25-ИСбо-3');
INSERT INTO public."Студент" VALUES (227, 'Степанов', 'Михаил', 'Максимович', '2007-08-22', '25-ИСбо-3');
INSERT INTO public."Студент" VALUES (228, 'Алексеев', 'Владислав', 'Романович', '2007-04-25', '25-ИСбо-3');
INSERT INTO public."Студент" VALUES (229, 'Беляев', 'Сергей', 'Артемович', '2007-11-22', '25-ИСбо-3');
INSERT INTO public."Студент" VALUES (230, 'Титов', 'Глеб', 'Алексеевич', '2007-04-13', '25-ИСбо-3');
INSERT INTO public."Студент" VALUES (231, 'Попова', 'София', 'Дмитриевна', '2007-04-25', '25-ИСбо-3');
INSERT INTO public."Студент" VALUES (232, 'Голубев', 'Роман', 'Андреевич', '2007-01-16', '25-ИСбо-3');
INSERT INTO public."Студент" VALUES (233, 'Соловьева', 'Ева', 'Павловна', '2007-09-18', '25-ИСбо-3');
INSERT INTO public."Студент" VALUES (234, 'Беляева', 'Мария', 'Павловна', '2007-07-01', '25-ПМбо-1');
INSERT INTO public."Студент" VALUES (235, 'Соколов', 'Виктор', 'Андреевич', '2008-10-13', '25-ПМбо-1');
INSERT INTO public."Студент" VALUES (236, 'Орлова', 'Александра', 'Артемовна', '2008-01-11', '25-ПМбо-1');
INSERT INTO public."Студент" VALUES (237, 'Степанов', 'Владислав', 'Владимирович', '2007-07-28', '25-ПМбо-1');
INSERT INTO public."Студент" VALUES (238, 'Киселев', 'Кирилл', 'Павлович', '2007-07-28', '25-ПМбо-1');
INSERT INTO public."Студент" VALUES (239, 'Михайлов', 'Матвей', 'Андреевич', '2007-02-17', '25-ПМбо-1');
INSERT INTO public."Студент" VALUES (240, 'Титов', 'Ярослав', 'Дмитриевич', '2007-06-24', '25-ПМбо-1');
INSERT INTO public."Студент" VALUES (241, 'Сорокина', 'Светлана', 'Ивановна', '2007-02-05', '25-ПМбо-1');
INSERT INTO public."Студент" VALUES (242, 'Соловьев', 'Денис', 'Иванович', '2007-03-25', '25-ПМбо-1');
INSERT INTO public."Студент" VALUES (243, 'Андреев', 'Федор', 'Евгеньевич', '2008-11-19', '25-ПМбо-1');
INSERT INTO public."Студент" VALUES (244, 'Степанов', 'Тимофей', 'Константинович', '2007-03-15', '25-ПМбо-1');
INSERT INTO public."Студент" VALUES (245, 'Макаров', 'Павел', 'Алексеевич', '2007-10-02', '25-ПМбо-1');
INSERT INTO public."Студент" VALUES (246, 'Соколов', 'Роман', 'Денисович', '2008-01-02', '25-ПМбо-1');
INSERT INTO public."Студент" VALUES (247, 'Богданов', 'Максим', 'Константинович', '2007-10-20', '25-ПМбо-1');
INSERT INTO public."Студент" VALUES (248, 'Андреев', 'Кирилл', 'Викторович', '2007-08-26', '25-ПМбо-1');
INSERT INTO public."Студент" VALUES (249, 'Васильев', 'Тимофей', 'Антонович', '2008-09-05', '25-ПМбо-1');
INSERT INTO public."Студент" VALUES (250, 'Макарова', 'Алиса', 'Андреевна', '2007-09-21', '25-ПМбо-1');
INSERT INTO public."Студент" VALUES (251, 'Семенов', 'Константин', 'Денисович', '2008-09-17', '25-ПМбо-1');
INSERT INTO public."Студент" VALUES (252, 'Тарасов', 'Никита', 'Алексеевич', '2008-07-25', '25-ПМбо-1');
INSERT INTO public."Студент" VALUES (253, 'Алексеев', 'Михаил', 'Константинович', '2007-02-11', '25-ПМбо-1');
INSERT INTO public."Студент" VALUES (254, 'Романов', 'Андрей', 'Алексеевич', '2007-12-28', '25-ПМбо-1');
INSERT INTO public."Студент" VALUES (255, 'Алексеева', 'Елена', 'Ивановна', '2007-02-19', '25-ИБбо-1');
INSERT INTO public."Студент" VALUES (256, 'Беляева', 'Александра', 'Константиновна', '2008-03-20', '25-ИБбо-1');
INSERT INTO public."Студент" VALUES (257, 'Лебедева', 'Александра', 'Викторовна', '2008-11-26', '25-ИБбо-1');
INSERT INTO public."Студент" VALUES (258, 'Морозов', 'Глеб', 'Олегович', '2007-11-22', '25-ИБбо-1');
INSERT INTO public."Студент" VALUES (259, 'Тарасов', 'Александр', 'Владимирович', '2007-03-07', '25-ИБбо-1');
INSERT INTO public."Студент" VALUES (260, 'Григорьев', 'Егор', 'Дмитриевич', '2007-03-05', '25-ИБбо-1');
INSERT INTO public."Студент" VALUES (261, 'Лазарев', 'Артем', 'Олегович', '2007-11-11', '25-ИБбо-1');
INSERT INTO public."Студент" VALUES (262, 'Степанова', 'Ева', 'Антоновна', '2008-03-06', '25-ИБбо-1');
INSERT INTO public."Студент" VALUES (263, 'Захаров', 'Федор', 'Антонович', '2007-12-15', '25-ИБбо-1');
INSERT INTO public."Студент" VALUES (264, 'Тарасов', 'Глеб', 'Сергеевич', '2008-10-10', '25-ИБбо-1');
INSERT INTO public."Студент" VALUES (265, 'Макарова', 'Екатерина', 'Викторовна', '2007-05-26', '25-ИБбо-1');
INSERT INTO public."Студент" VALUES (266, 'Васильев', 'Дарья', 'Евгеньевна', '2008-08-25', '25-ИБбо-1');
INSERT INTO public."Студент" VALUES (267, 'Белов', 'Ярослав', 'Олегович', '2008-03-27', '25-ИБбо-1');
INSERT INTO public."Студент" VALUES (268, 'Алексеев', 'Иван', 'Николаевич', '2007-11-16', '25-ИБбо-1');
INSERT INTO public."Студент" VALUES (269, 'Кудрявцева', 'Ирина', 'Артемовна', '2007-05-03', '25-ИБбо-1');
INSERT INTO public."Студент" VALUES (270, 'Виноградова', 'Валерия', 'Олеговна', '2007-07-03', '25-ИБбо-1');
INSERT INTO public."Студент" VALUES (271, 'Павлова', 'Светлана', 'Денисовна', '2007-01-14', '25-ИБбо-1');
INSERT INTO public."Студент" VALUES (272, 'Гусев', 'Никита', 'Сергеевич', '2008-02-12', '25-ИБбо-1');
INSERT INTO public."Студент" VALUES (273, 'Федоров', 'Олег', 'Артемович', '2007-03-05', '25-ИБбо-1');
INSERT INTO public."Студент" VALUES (274, 'Никитин', 'Егор', 'Иванович', '2008-08-20', '25-ИБбо-1');
INSERT INTO public."Студент" VALUES (275, 'Лебедев', 'Александр', 'Николаевич', '2007-03-18', '25-ИБбо-1');
INSERT INTO public."Студент" VALUES (276, 'Алексеева', 'Милана', 'Романовна', '2007-05-08', '25-ИБбо-1');


--
-- Data for Name: Тип_договора; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Тип_договора" VALUES (1, 'о практике');
INSERT INTO public."Тип_договора" VALUES (2, 'о сотрудничестве');


--
-- Data for Name: Тип_компетенции; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Тип_компетенции" VALUES (1, 'Универсальная');
INSERT INTO public."Тип_компетенции" VALUES (2, 'Общепрофессиональная');
INSERT INTO public."Тип_компетенции" VALUES (3, 'Профессиональная');


--
-- Name: Вид_практики_Id_вида_практики_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Вид_практики_Id_вида_практики_seq"', 3, true);


--
-- Name: Должность_вакансии_Id_должности_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Должность_вакансии_Id_должности_seq"', 8, true);


--
-- Name: Должность_руков_Id_должности_рук_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Должность_руков_Id_должности_рук_seq"', 3, true);


--
-- Name: Доступные_места_Id_доступного_ме_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Доступные_места_Id_доступного_ме_seq"', 25, true);


--
-- Name: Журнал_инцидентов_Id_журнала_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Журнал_инцидентов_Id_журнала_seq"', 4, true);


--
-- Name: Задание_Id_задания_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Задание_Id_задания_seq"', 171, true);


--
-- Name: Заявка_на_практику_Id_заявки_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Заявка_на_практику_Id_заявки_seq"', 275, true);


--
-- Name: Практика_Id_практики_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Практика_Id_практики_seq"', 6, true);


--
-- Name: Практика_студен_Id_практики_студ_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Практика_студен_Id_практики_студ_seq"', 115, true);


--
-- Name: Результат_Id_результата_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Результат_Id_результата_seq"', 115, true);


--
-- Name: Руководитель_от__Id_руководителя_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Руководитель_от__Id_руководителя_seq"', 18, true);


--
-- Name: Статус_договора_Id_статуса_догов_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Статус_договора_Id_статуса_догов_seq"', 2, true);


--
-- Name: Статус_задания_Id_статуса_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Статус_задания_Id_статуса_seq"', 3, true);


--
-- Name: Статус_заявки_Id_статуса_заявки_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Статус_заявки_Id_статуса_заявки_seq"', 5, true);


--
-- Name: Студент_Id_студента_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Студент_Id_студента_seq"', 276, true);


--
-- Name: Тип_договора_Id_типа_договора_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Тип_договора_Id_типа_договора_seq"', 2, true);


--
-- Name: Тип_компетенции_Id_типа_компетен_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Тип_компетенции_Id_типа_компетен_seq"', 3, true);


--
-- Name: Test Test_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Test"
    ADD CONSTRAINT "Test_pkey" PRIMARY KEY ("Статус");


--
-- Name: Вид_практики Вид_практики_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Вид_практики"
    ADD CONSTRAINT "Вид_практики_pkey" PRIMARY KEY ("Id_вида_практики");


--
-- Name: Группа Группа_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Группа"
    ADD CONSTRAINT "Группа_pkey" PRIMARY KEY ("Номер_группы");


--
-- Name: Договор Договор_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Договор"
    ADD CONSTRAINT "Договор_pkey" PRIMARY KEY ("Номер_договора");


--
-- Name: Должность_вакансии Должность_вакансии_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Должность_вакансии"
    ADD CONSTRAINT "Должность_вакансии_pkey" PRIMARY KEY ("Id_должности");


--
-- Name: Должность_руководителя Должность_руководителя_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Должность_руководителя"
    ADD CONSTRAINT "Должность_руководителя_pkey" PRIMARY KEY ("Id_должности_руководителя");


--
-- Name: Доступные_места Доступные_места_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Доступные_места"
    ADD CONSTRAINT "Доступные_места_pkey" PRIMARY KEY ("Id_доступного_места");


--
-- Name: Журнал_инцидентов Журнал_инцидентов_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Журнал_инцидентов"
    ADD CONSTRAINT "Журнал_инцидентов_pkey" PRIMARY KEY ("Id_журнала");


--
-- Name: Задание Задание_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Задание"
    ADD CONSTRAINT "Задание_pkey" PRIMARY KEY ("Id_задания");


--
-- Name: Заявка_на_практику Заявка_на_практику_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Заявка_на_практику"
    ADD CONSTRAINT "Заявка_на_практику_pkey" PRIMARY KEY ("Id_заявки");


--
-- Name: Компетенция Компетенция_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Компетенция"
    ADD CONSTRAINT "Компетенция_pkey" PRIMARY KEY ("Код_компетенции");


--
-- Name: Направление_подготовки Направление_подготовки_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Направление_подготовки"
    ADD CONSTRAINT "Направление_подготовки_pkey" PRIMARY KEY ("Код_направления");


--
-- Name: Организация_партнер Организация_партнер_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Организация_партнер"
    ADD CONSTRAINT "Организация_партнер_pkey" PRIMARY KEY ("Наименование_организации");


--
-- Name: Оценка_выполнения Оценка_выполнения_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Оценка_выполнения"
    ADD CONSTRAINT "Оценка_выполнения_pkey" PRIMARY KEY ("Id_задания", "Код_компетенции");


--
-- Name: Практика Практика_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Практика"
    ADD CONSTRAINT "Практика_pkey" PRIMARY KEY ("Id_практики");


--
-- Name: Практика_студента Практика_студента_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Практика_студента"
    ADD CONSTRAINT "Практика_студента_pkey" PRIMARY KEY ("Id_практики_студента");


--
-- Name: Результат Результат_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Результат"
    ADD CONSTRAINT "Результат_pkey" PRIMARY KEY ("Id_результата");


--
-- Name: Руководитель_от_университета Руководитель_от_университета_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Руководитель_от_университета"
    ADD CONSTRAINT "Руководитель_от_университета_pkey" PRIMARY KEY ("Id_руководителя");


--
-- Name: Статус_договора Статус_договора_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Статус_договора"
    ADD CONSTRAINT "Статус_договора_pkey" PRIMARY KEY ("Id_статуса_договора");


--
-- Name: Статус_задания Статус_задания_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Статус_задания"
    ADD CONSTRAINT "Статус_задания_pkey" PRIMARY KEY ("Id_статуса");


--
-- Name: Статус_заявки Статус_заявки_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Статус_заявки"
    ADD CONSTRAINT "Статус_заявки_pkey" PRIMARY KEY ("Id_статуса_заявки");


--
-- Name: Студент Студент_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Студент"
    ADD CONSTRAINT "Студент_pkey" PRIMARY KEY ("Id_студента");

ALTER TABLE public."Студент" CLUSTER ON "Студент_pkey";


--
-- Name: Тип_договора Тип_договора_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Тип_договора"
    ADD CONSTRAINT "Тип_договора_pkey" PRIMARY KEY ("Id_типа_договора");


--
-- Name: Тип_компетенции Тип_компетенции_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Тип_компетенции"
    ADD CONSTRAINT "Тип_компетенции_pkey" PRIMARY KEY ("Id_типа_компетенции");


--
-- Name: Группа FK_Группа_Направление_подготовки; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Группа"
    ADD CONSTRAINT "FK_Группа_Направление_подготовки" FOREIGN KEY ("Код_направления") REFERENCES public."Направление_подготовки"("Код_направления");


--
-- Name: Договор FK_Договор_Организация_партнер; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Договор"
    ADD CONSTRAINT "FK_Договор_Организация_партнер" FOREIGN KEY ("Наименование_организации") REFERENCES public."Организация_партнер"("Наименование_организации");


--
-- Name: Договор FK_Договор_Статус_договора; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Договор"
    ADD CONSTRAINT "FK_Договор_Статус_договора" FOREIGN KEY ("Id_статуса_договора") REFERENCES public."Статус_договора"("Id_статуса_договора");


--
-- Name: Договор FK_Договор_Тип_договора; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Договор"
    ADD CONSTRAINT "FK_Договор_Тип_договора" FOREIGN KEY ("Id_типа_договора") REFERENCES public."Тип_договора"("Id_типа_договора");


--
-- Name: Доступные_места FK_Доступные_места_Должность_вакан; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Доступные_места"
    ADD CONSTRAINT "FK_Доступные_места_Должность_вакан" FOREIGN KEY ("Id_должности") REFERENCES public."Должность_вакансии"("Id_должности");


--
-- Name: Доступные_места FK_Доступные_места_Организация_пар; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Доступные_места"
    ADD CONSTRAINT "FK_Доступные_места_Организация_пар" FOREIGN KEY ("Наименование_организации") REFERENCES public."Организация_партнер"("Наименование_организации");


--
-- Name: Доступные_места FK_Доступные_места_Практика; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Доступные_места"
    ADD CONSTRAINT "FK_Доступные_места_Практика" FOREIGN KEY ("Id_практики") REFERENCES public."Практика"("Id_практики");


--
-- Name: Журнал_инцидентов FK_Журнал_инцидентов_Практика_студ; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Журнал_инцидентов"
    ADD CONSTRAINT "FK_Журнал_инцидентов_Практика_студ" FOREIGN KEY ("Id_практики_студента") REFERENCES public."Практика_студента"("Id_практики_студента");


--
-- Name: Задание FK_Задание_Практика_студента; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Задание"
    ADD CONSTRAINT "FK_Задание_Практика_студента" FOREIGN KEY ("Id_практики_студента") REFERENCES public."Практика_студента"("Id_практики_студента");


--
-- Name: Задание FK_Задание_Статус_задания; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Задание"
    ADD CONSTRAINT "FK_Задание_Статус_задания" FOREIGN KEY ("Id_статуса") REFERENCES public."Статус_задания"("Id_статуса");


--
-- Name: Заявка_на_практику FK_Заявка_на_практику_Доступные_мес; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Заявка_на_практику"
    ADD CONSTRAINT "FK_Заявка_на_практику_Доступные_мес" FOREIGN KEY ("Id_доступного_места") REFERENCES public."Доступные_места"("Id_доступного_места");


--
-- Name: Заявка_на_практику FK_Заявка_на_практику_Статус_заявки; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Заявка_на_практику"
    ADD CONSTRAINT "FK_Заявка_на_практику_Статус_заявки" FOREIGN KEY ("Id_статуса_заявки") REFERENCES public."Статус_заявки"("Id_статуса_заявки");


--
-- Name: Заявка_на_практику FK_Заявка_на_практику_Студент; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Заявка_на_практику"
    ADD CONSTRAINT "FK_Заявка_на_практику_Студент" FOREIGN KEY ("Id_студента") REFERENCES public."Студент"("Id_студента");


--
-- Name: Компетенция FK_Компетенция_Направление_подгото; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Компетенция"
    ADD CONSTRAINT "FK_Компетенция_Направление_подгото" FOREIGN KEY ("Код_направления") REFERENCES public."Направление_подготовки"("Код_направления");


--
-- Name: Компетенция FK_Компетенция_Тип_компетенции; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Компетенция"
    ADD CONSTRAINT "FK_Компетенция_Тип_компетенции" FOREIGN KEY ("Id_типа_компетенции") REFERENCES public."Тип_компетенции"("Id_типа_компетенции");


--
-- Name: Оценка_выполнения FK_Оценка_выполнения_Задание; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Оценка_выполнения"
    ADD CONSTRAINT "FK_Оценка_выполнения_Задание" FOREIGN KEY ("Id_задания") REFERENCES public."Задание"("Id_задания");


--
-- Name: Оценка_выполнения FK_Оценка_выполнения_Компетенция; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Оценка_выполнения"
    ADD CONSTRAINT "FK_Оценка_выполнения_Компетенция" FOREIGN KEY ("Код_компетенции") REFERENCES public."Компетенция"("Код_компетенции");


--
-- Name: Практика FK_Практика_Вид_практики; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Практика"
    ADD CONSTRAINT "FK_Практика_Вид_практики" FOREIGN KEY ("Id_вида_практики") REFERENCES public."Вид_практики"("Id_вида_практики");


--
-- Name: Практика FK_Практика_Направление_подготовки; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Практика"
    ADD CONSTRAINT "FK_Практика_Направление_подготовки" FOREIGN KEY ("Код_направления") REFERENCES public."Направление_подготовки"("Код_направления");


--
-- Name: Практика_студента FK_Практика_студента_Заявка_на_прак; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Практика_студента"
    ADD CONSTRAINT "FK_Практика_студента_Заявка_на_прак" FOREIGN KEY ("Id_заявки") REFERENCES public."Заявка_на_практику"("Id_заявки");


--
-- Name: Практика_студента FK_Практика_студента_Руководитель_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Практика_студента"
    ADD CONSTRAINT "FK_Практика_студента_Руководитель_" FOREIGN KEY ("Id_руководителя") REFERENCES public."Руководитель_от_университета"("Id_руководителя");


--
-- Name: Результат FK_Результат_Практика_студента; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Результат"
    ADD CONSTRAINT "FK_Результат_Практика_студента" FOREIGN KEY ("Id_практики_студента") REFERENCES public."Практика_студента"("Id_практики_студента");


--
-- Name: Руководитель_от_университета FK_Руководитель_от_университета_До; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Руководитель_от_университета"
    ADD CONSTRAINT "FK_Руководитель_от_университета_До" FOREIGN KEY ("Id_должности_руководителя") REFERENCES public."Должность_руководителя"("Id_должности_руководителя");


--
-- Name: Студент FK_Студент_Группа; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Студент"
    ADD CONSTRAINT "FK_Студент_Группа" FOREIGN KEY ("Номер_группы") REFERENCES public."Группа"("Номер_группы");


--
-- PostgreSQL database dump complete
--

\unrestrict EtcSEyKvMpmFMrgCfbVijtMOP50zS1nnnRfesuWeIbl8t3FTRDaLIHJ7MaENnIs

