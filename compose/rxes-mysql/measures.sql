GRANT REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'replicator' IDENTIFIED BY 'replpass';
GRANT SELECT, RELOAD, SHOW DATABASES, REPLICATION SLAVE, REPLICATION CLIENT  ON *.* TO 'debezium' IDENTIFIED BY 'dbz';

CREATE DATABASE measures;
GRANT ALL PRIVILEGES ON measures.* TO 'my-user'@'%' IDENTIFIED BY 'password';

CREATE DATABASE measures;
USE measures;

CREATE TABLE measures (
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user VARCHAR(255) NOT NULL,
  timestamp TIMESTAMP NOT NULL,
  temperature FLOAT,
  systolic FLOAT,
  diastolic FLOAT,
  glucose FLOAT
);

ALTER TABLE measures AUTO_INCREMENT = 101;
