CREATE INDEX make_code ON car_models (make_code);


SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM'; -- 2.495 ms
SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R'; -- 1.965 ms
SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM'; -- 1.775 ms
SELECT * FROM car_models WHERE year >= 2010 AND year <= 2015; -- 70.785 ms
SELECT * from car_models WHERE year = 2010; -- 38.043 msq