CREATE TABLE users(
  id  Serial PRIMARY KEY,
  username varchar(255) NOT NULL ,
  password varchar(255) NOT NULL
);
CREATE TABLE roles
(
  id SERIAL PRIMARY KEY ,
  name VARCHAR(100) NOT NULL
);
CREATE TABLE user_roles(
  user_id int NOT NULL ,
  role_id INT NOT NULL ,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (role_id) REFERENCES roles(id),

  UNIQUE (user_id,role_id)
);
INSERT into users VALUES (1,'admin','admin');
INSERT INTO roles  VALUES (1,'ROLE_USER');
INSERT INTO roles  VALUES (2,'ROLE_ADMIN');
INSERT INTO user_roles VALUES (1,2);