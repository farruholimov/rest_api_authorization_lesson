CREATE DATABASE rest_api;

CREATE TYPE roles AS ENUM ('admin', 'superadmin', 'user'); 

CREATE TABLE users (
    user_id BIGSERIAL NOT NULL PRIMARY KEY UNIQUE,
    user_name VARCHAR(32) NOT NULL,
    user_username VARCHAR(16) NOT NULL UNIQUE,
    user_password VARCHAR(64) NOT NULL,
    user_role roles DEFAULT 'user',
    user_created_at date DEFAULT  CURRENT_TIMESTAMP
);

INSERT INTO users (user_name, user_username, user_password, user_role) VALUES ('Farruh', 'farruh', 'mypassword', 'superadmin');