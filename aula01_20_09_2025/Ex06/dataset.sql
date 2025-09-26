-- ## 6. Prática com Dataset Real
-- Baixar um dataset público simples (CSV) e:
-- - Importar para PostgreSQL
-- - Criar 5 consultas diferentes
-- - Documentar insights encontrados

-- Criação do banco
CREATE DATABASE carros_db;
\c carros_db

-- Tabela carros
CREATE TABLE carros (
    id SERIAL PRIMARY KEY,
    mpg NUMERIC,
    cylinders INT,
    displacement NUMERIC,
    horsepower NUMERIC,
    weight NUMERIC,
    acceleration NUMERIC,
    model_year INT,
    origin VARCHAR(50),
    name VARCHAR(100)
);

-- Importação do CSV publico
COPY carros(mpg, cylinders, displacement, horsepower, weight, acceleration, model_year, origin, name)
FROM 'mpg.csv' DELIMITER ',' CSV HEADER;

-- Carros com mais de 6 cilindros
SELECT * 
FROM carros 
WHERE cylinders > 6;

-- Carros mais leves que 2500 lbs
SELECT * 
FROM carros 
WHERE weight < 2500;

-- Carros com consumo maior que 25 mpg
SELECT * 
FROM carros 
WHERE mpg > 25;

-- Quantidade de carros por país de origem
SELECT origin, COUNT(*) AS total 
FROM carros 
GROUP BY origin;

-- Carros mais potentes
SELECT name, horsepower 
FROM carros 
ORDER BY horsepower DESC 
LIMIT 5;
