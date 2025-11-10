CREATE TABLE Pedidos (
    PedidoID INT,
    DataPedido DATE,

    ClienteID INT,
    ClienteNome VARCHAR(100),
    ClienteEmail VARCHAR(100),
    ClienteCidade VARCHAR(50),
    ClienteEstado VARCHAR(2),
    ClienteCEP VARCHAR(10),
    ClienteEndereco VARCHAR(300),
    TelefoneCliente VARCHAR(20),

    VendedorID INT,
    NomeVendedor VARCHAR(100),
    ComissaoVendedor DECIMAL(5,2),

    ProdutoID INT,
    ProdutoNome VARCHAR(100),
    ProdutoCategoria VARCHAR(50),
    ProdutoPreco DECIMAL(10,2),

    Quantidade INT,
    ValorTotal DECIMAL(10,2)
);
