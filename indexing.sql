-- DROP DATABASE "indexed_cars";
-- CREATE USER "indexed_cars_user" WITH ENCRYPTED PASSWORD 'passw0rd';
-- CREATE DATABASE "indexed_cars" WITH OWNER "indexed_cars_user";

-- to connect with login credentials: psql -U indexed_cars_user -W indexed_cars

-- \i scripts/car_models.sql;

-- \i scripts/car_model_data.sql;
-- \i scripts/car_model_data.sql;
-- \i scripts/car_model_data.sql;
-- \i scripts/car_model_data.sql;
-- \i scripts/car_model_data.sql;
-- \i scripts/car_model_data.sql;
-- \i scripts/car_model_data.sql;
-- \i scripts/car_model_data.sql;
-- \i scripts/car_model_data.sql;
-- \i scripts/car_model_data.sql;

-- \timing;


SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM'; -- 2.495 ms
SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R'; -- 1.965 ms
SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM'; -- 1.775 ms
SELECT * FROM car_models WHERE year >= 2010 AND year <= 2015; -- 70.785 ms
SELECT * from car_models WHERE year = 2010; -- 38.043 msq