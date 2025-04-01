create database sisvendas;

-Tabela de permição-
create table Permissoes (
ID SERIAL primary key,
Nome VARCHAR(50) unique not null,
Descricao TEXT
);

-Tabela usuários-
create table Usuarios (
ID SERIAL primary key,
Nome VARCHAR(100) not null,
Email VARCHAR(100) unique not null,
Senha VARCHAR(100) not null,
Permissao_id INTEGER references Permissoes(ID)
);

-tabela clientes-
create table Clientes (
ID SERIAL primary key,
Nome VARCHAR(100) not null,
Email VARCHAR(100) unique,
Telefone VARCHAR(20),
Endereco VARCHAR(255)
);

-Tabela Categorias-
create table Categorias (
ID SERIAL primary key,
Nome VARCHAR(50) unique not null,
Descricao TEXT
);

-Tabela produtos-
create table Produtos(
ID SERIAL primary key,
Nome VARCHAR(100) not null,
Descricao text,
Preco DECIMAL(10,2) not null,
Categoria_ID INTEGER references Categorias(ID)
);

-Tabela de Clientes_Produtos(junção para relacionamento muitos-para-muitos)
CREATE TABLE Clientes_Produtos (
    Cliente_ID INTEGER references Clientes(ID),
    Produto_ID INTEGER references Produtos(ID),
    primary key (Cliente_ID, Produto_ID)
);

-Tabela pagamentos-
create table FormasPagamento (
ID SERIAL primary key,
Nome VARCHAR(50) unique not null,
Descricao TEXT
);
