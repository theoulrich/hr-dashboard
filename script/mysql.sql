CREATE  TABLE users (
  id int not null,
  username VARCHAR(45) NOT NULL ,
  password VARCHAR(45) NOT NULL ,
  enabled TINYINT NOT NULL DEFAULT 1 ,
  PRIMARY KEY (id));

CREATE TABLE user_roles (
  user_role_id int(11) NOT NULL AUTO_INCREMENT,
  id int not null,
  username varchar(45) NOT NULL,
  role varchar(45) NOT NULL,
  PRIMARY KEY (user_role_id),
  UNIQUE KEY uni_id_role (role,id),
  KEY fk_id (id),
  CONSTRAINT fk_id FOREIGN KEY (id) REFERENCES users (id));
  
INSERT INTO users(id,username,password,enabled)
VALUES ('846588','theo','123', true);
INSERT INTO users(id,username,password,enabled)
VALUES ('846587','alex','123', true);

INSERT INTO user_roles (id,username, role)
VALUES ('846588','theo', 'ROLE_USER');
INSERT INTO user_roles (id,username, role)
VALUES ('846588','theo', 'ROLE_ADMIN');
INSERT INTO user_roles (id,username, role)
VALUES ('846587','alex', 'ROLE_USER');