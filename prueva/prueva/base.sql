CREATE TABLE IF NOT EXISTS user
(
  username varchar(20) NOT NULL PRIMARY KEY,
  name varchar(10) NOT NULL,
  surname varchar(10) NOT NULL,
  birthday date,
  description varchar(120)
);

CREATE TABLE IF NOT EXISTS item
(
  id bigint NOT NULL PRIMARY KEY,
  name varchar(100) NOT NULL,
  type varchar(20) NOT NULL,
  category varchar(30) NOT NULL,
  foto blob
);

CREATE TABLE IF NOT EXISTS listed
(
  year int NOT NULL,
  mark int NOT NULL,
  opinion TEXT,
  username varchar(20) NOT NULL,
  id bigint NOT NULL,
  FOREIGN KEY (username) REFERENCES user
    ON DELETE CASCADE,
  FOREIGN KEY (id) REFERENCES item
    ON DELETE CASCADE,
  PRIMARY KEY(username,id)
);
