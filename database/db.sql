
CREATE DATABASE links_db;

USE links_db;

-- users table
CREATE TABLE users(
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    usermane VARCHAR(16),
    password VARCHAR(60),
    fullname VARCHAR(100)
);

DESCRIBE users;

-- links table
CREATE TABLE links(
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    url VARCHAR(255) NOT NULL,
    description TEXT,
    user_id INT(11),
    created_at timestamp NOT NULL DEFAULT current_timestamp,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id)
);