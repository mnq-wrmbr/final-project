DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first VARCHAR(255) NOT NULL,
    last VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    url VARCHAR (255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS reset_codes CASCADE;
CREATE TABLE reset_codes(
    id SERIAL   PRIMARY KEY,
    email       VARCHAR NOT NULL,
    code        VARCHAR NOT NULL,
    timestamp   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  );

DROP TABLE IF EXISTS popup CASCADE;
CREATE TABLE popup(
  id SERIAL PRIMARY KEY,
  comment TEXT,
  url VARCHAR(255),
  user_id INT REFERENCES users(id) NOT NULL,
  lat real NULL,
  lng real NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
 );
