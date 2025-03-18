# Banco de Dados
CREATA DATABASE Livraria

CREATE TABLE Livros (
    ID_Livro SERIAL PRIMARY KEY,
    Titulo VARCHAR(255),
    Autor VARCHAR(255),
    Editora VARCHAR(255),
    Endereco_Editora VARCHAR(255),
    Categoria VARCHAR(255)
);

CREATE TABLE Editora (
    ID_Editora SERIAL PRIMARY KEY,
    Nome VARCHAR(255),
    Endereco VARCHAR(255)
);

ALTER TABLE Livros
ADD COLUMN ID_Editora INT REFERENCES Editoras (ID_Editora);

ALTER TABLE Livros
DROP COLUMN Editora,
DROP COLUMN Endereco_Editora;

CREATE TABLE Categorias (
    ID_Categoria SERIAL PRIMARY KEY,
    Nome VARCHAR(255)
);

ALTER TABLE Livros
ADD COLUMN ID_Categoria INT REFERENCES
Categorias(ID_Categoria);

ALTER TABLE Livros
DROP COLUMN Categoria;

-Criação tabela Autor-
create table Autor(
	ID_Autor SERIAL primary key,
	Nome varchar(255)
);

-Relacionamento de Autor - Livros-
alter table Autor 
add column ID_Livros INT references
Livros(ID_Livros);