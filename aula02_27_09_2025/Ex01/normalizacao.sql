CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Cidade VARCHAR(50),
    Estado VARCHAR(2),
    CEP VARCHAR(10),
    Endereco VARCHAR(300)
);

CREATE TABLE TelefonesCliente (
    TelefoneID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT,
    Telefone VARCHAR(20),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

CREATE TABLE Vendedores (
    VendedorID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Comissao DECIMAL(5,2)
);

CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Categoria VARCHAR(50),
    Preco DECIMAL(10,2)
);

CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT,
    VendedorID INT,
    DataPedido DATE,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (VendedorID) REFERENCES Vendedores(VendedorID)
);

CREATE TABLE ItensPedido (
    ItemID INT PRIMARY KEY AUTO_INCREMENT,
    PedidoID INT,
    ProdutoID INT,
    Quantidade INT,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);
