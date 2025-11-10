USE juliaostore;

-- Lista de todos os clientes cadastrados
SELECT * FROM Clientes;

-- Produtos da categoria de acessorios
SELECT *
FROM Produtos
WHERE Categoria = 'Acessórios';

-- Pedidos realizados por Ana Silve
SELECT p.*
FROM Pedidos p
JOIN Clientes c ON p.ClienteID = c.ClienteID
WHERE c.Nome = 'Ana Silva';

-- Valor total de cada pedido
SELECT 
    p.PedidoID,
    SUM(i.Quantidade * pr.Preco) AS ValorTotal
FROM Pedidos p
JOIN ItensPedido i ON p.PedidoID = i.PedidoID
JOIN Produtos pr ON i.ProdutoID = pr.ProdutoID
GROUP BY p.PedidoID;

-- Total gasto por cada cliente
SELECT 
    c.Nome AS Cliente,
    SUM(i.Quantidade * pr.Preco) AS TotalGasto
FROM Clientes c
JOIN Pedidos p ON c.ClienteID = p.ClienteID
JOIN ItensPedido i ON p.PedidoID = i.PedidoID
JOIN Produtos pr ON i.ProdutoID = pr.ProdutoID
GROUP BY c.Nome
ORDER BY TotalGasto DESC;

-- Produtos mais vendidos
SELECT 
    pr.Nome AS Produto,
    SUM(i.Quantidade) AS TotalVendido
FROM Produtos pr
JOIN ItensPedido i ON pr.ProdutoID = i.ProdutoID
GROUP BY pr.Nome
ORDER BY TotalVendido DESC;

-- Clientes que compraram mais de 1 tipo de produto
SELECT 
    c.Nome AS Cliente,
    COUNT(DISTINCT i.ProdutoID) AS ProdutosDiferentes
FROM Clientes c
JOIN Pedidos p ON c.ClienteID = p.ClienteID
JOIN ItensPedido i ON p.PedidoID = i.PedidoID
GROUP BY c.Nome
HAVING COUNT(DISTINCT i.ProdutoID) > 1;

-- Pedidos acima de 3000 reais
SELECT 
    p.PedidoID,
    SUM(i.Quantidade * pr.Preco) AS ValorTotal
FROM Pedidos p
JOIN ItensPedido i ON p.PedidoID = i.PedidoID
JOIN Produtos pr ON i.ProdutoID = pr.ProdutoID
GROUP BY p.PedidoID
HAVING SUM(i.Quantidade * pr.Preco) > 3000;

-- Ticket medio por cliente
SELECT 
    c.Nome AS Cliente,
    AVG(ValorTotal) AS TicketMedio
FROM (
    SELECT 
        p.PedidoID,
        p.ClienteID,
        SUM(i.Quantidade * pr.Preco) AS ValorTotal
    FROM Pedidos p
    JOIN ItensPedido i ON p.PedidoID = i.PedidoID
    JOIN Produtos pr ON i.ProdutoID = pr.ProdutoID
    GROUP BY p.PedidoID
) t
JOIN Clientes c ON t.ClienteID = c.ClienteID
GROUP BY c.Nome;

-- Clientes que nunca fizeram pedidos
SELECT c.*
FROM Clientes c
LEFT JOIN Pedidos p ON c.ClienteID = p.ClienteID
WHERE p.PedidoID IS NULL;

-- Produto que gerou mais receita total
SELECT 
    pr.Nome,
    SUM(i.Quantidade * pr.Preco) AS Receita
FROM Produtos pr
JOIN ItensPedido i ON pr.ProdutoID = i.ProdutoID
GROUP BY pr.Nome
ORDER BY Receita DESC
LIMIT 1;

-- Quantidade de clientes que comprou em set/2025
SELECT COUNT(DISTINCT ClienteID) AS ClientesQueCompraram
FROM Pedidos
WHERE DATE_PART('month', DataPedido) = 9
  AND DATE_PART('year', DataPedido) = 2025;

-- Diferença entre o maior e menor ticket de pedido
WITH Totais AS (
    SELECT 
        p.PedidoID,
        SUM(i.Quantidade * pr.Preco) AS TotalPedido
    FROM Pedidos p
    JOIN ItensPedido i ON p.PedidoID = i.PedidoID
    JOIN Produtos pr ON i.ProdutoID = pr.ProdutoID
    GROUP BY p.PedidoID
)
SELECT 
    MAX(TotalPedido) - MIN(TotalPedido) AS Diferenca;
