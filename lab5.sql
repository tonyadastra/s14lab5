DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users (
    uid serial NOT NULL PRIMARY KEY,
    username TEXT NOT NULL,
    password TEXT NOT NULL
);

INSERT INTO users (username, password) VALUES ('Johnny', 's-14a-super-secret');
INSERT INTO users (username, password) VALUES ('Jane', 's-14a-top-secret');

DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
    pid serial NOT NULL PRIMARY KEY,
    author serial NOT NULL,
    content TEXT NOT NULL,
    date DATE NOT NULL DEFAULT CURRENT_DATE,
    FOREIGN KEY (author) REFERENCES users(uid)
);

INSERT INTO posts (author, content) VALUES (1, 'Hey! Come join Harvard S-14A course!');
INSERT INTO posts (author, content) VALUES (2, 'Absolutely! See you in my web application~');
