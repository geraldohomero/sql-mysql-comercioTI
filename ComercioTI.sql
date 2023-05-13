-- Criação do banco de dados
CREATE DATABASE ComercioTI;
USE ComercioTI;

-- Criando as tabelas do BD
CREATE TABLE Fornecedor (Codigo char(3) PRIMARY KEY, Nome char(20));

CREATE TABLE Categoria (
    Codigo char(3) PRIMARY KEY,
    Nome char(15)
);

CREATE TABLE Produto (
    CodigoProduto char(3) PRIMARY KEY,
    NomeProduto char(30),
    PrecoProduto numeric(6,2),
    Categoria char(3),
    Fornecedor char(3),
    constraint FK_Produto_Categoria foreign key (Categoria) references Categoria(Codigo)
);

-- Alteração da estrutura do banco de dados
-- ALTER TABLE
ALTER TABLE Produto
ADD CONSTRAINT FK_Produto_Fornecedor FOREIGN KEY (Fornecedor) REFERENCES Fornecedor(Codigo);
