-- ## 2. Script SQL Prático
-- Criar um script SQL completo com:
-- - Criação de 2 tabelas relacionadas (ex: produtos e categorias)
-- - Inserção de pelo menos 5 registros em cada tabela
-- - 3 consultas diferentes usando WHERE
-- - 1 consulta com ORDER BY
-- - 1 consulta com JOIN
-- - Comentários explicando cada seção

-- Criação do banco e seleção
CREATE DATABASE oficina_rocar;
USE oficina_rocar;

-- Tabela de categorias
CREATE TABLE categorias (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL
 );
 
 -- Tabela de produtos
 CREATE TABLE produtos (
   id SERIAL PRIMARY KEY,
   nome VARCHAR(100) NOT NULL,
   preco DECIMAL(10,2) NOT NULL,
   estoque INT NOT NULL,
   categoria_id INT,
   FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

-- Inserindo 5 categorias
INSERT INTO categorias (nome) VALUES 
('Suspensão'),
('Lubrificação'),
('Eletrica'),
('Estetica'),
('Freio');

-- Inserindo 5 produtos
INSERT INTO produtos (nome, preco, estoque, categoria_id) VALUES
('Molas dianteiras', 320.00, 10, 1),
('Kit de Suspensão', 699.00, 5, 1),
('Óleo 5W30', 34.00, 20, 2),
('Lampada 2 polos', 7.80, 50, 3),
('Capa para volante', 29.90, 8, 4);

-- Preço maior que 100
SELECT * FROM produtos WHERE preco > 100;

-- Estoque menor ou igual a 10
SELECT * FROM produtos WHERE estoque <= 10;

-- Apenas Supensão
SELECT * FROM produtos WHERE categoria_id = 1;

-- Ordenando por preço crescente
SELECT * FROM produtos ORDER BY preco ASC;

-- Faz uma consulta juntando dados das duas tabelas
SELECT 
    produtos.nome AS Produto,
    produtos.preco AS Preço,
    categorias.nome AS Categoria
FROM produtos
INNER JOIN categorias ON produtos.categoria_id = categorias.id;
