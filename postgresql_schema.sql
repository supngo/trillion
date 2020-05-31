DROP TABLE IF EXISTS ip_management;
  
CREATE TABLE ip_management (
  id SERIAL  PRIMARY KEY,
  ip VARCHAR(50) NOT NULL,
  status VARCHAR(100) NOT NULL
);