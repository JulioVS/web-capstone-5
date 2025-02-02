-- Database: bookshelf ✅

DROP DATABASE IF EXISTS bookshelf; 

CREATE DATABASE bookshelf
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

COMMENT ON DATABASE bookshelf
    IS 'Udemy WebDev Capstone Project 5';

-- Table: public.books ✅

DROP TABLE IF EXISTS public.books;

CREATE TABLE IF NOT EXISTS public.books
(
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  author VARCHAR(100) NOT NULL,
  description TEXT,
  image_link TEXT,
  date_published DATE,
  isbn VARCHAR(17),
  my_rating INT,
  my_review TEXT,
  date_read DATE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.books
    OWNER to postgres;
