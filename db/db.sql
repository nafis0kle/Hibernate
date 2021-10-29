CREATE DATABASE my_db ENCODING "UTF-8";

CREATE TABLE IF NOT EXISTS engines (
  id    SERIAL PRIMARY KEY,
  model VARCHAR(25) NOT NULL,
  power INTEGER     NOT NULL
);

INSERT INTO engines (model, power) VALUES ('model_test', 123);

CREATE TABLE IF NOT EXISTS cars (
  id        SERIAL PRIMARY KEY,
  mark      VARCHAR(25) NOT NULL,
  model     VARCHAR(25) NOT NULL,
  engine_id INTEGER     NOT NULL,
  FOREIGN KEY (engine_id) REFERENCES engines (id)
);

INSERT INTO  cars (mark, model, engine_id) VALUES ('car_test', 'test_model', 1);
