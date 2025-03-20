-Criação de tabela livros-
create table Livros(
	ID_Livros SERIAL primary key,
	Titulo varchar(255),
	Autor varchar(255),
	Editora varchar(255),
	Endereco_Editora varchar(255),
	Categoria varchar(255)
);

-Criação de tabela Editora-
create table Editora(
	ID_Editora SERIAL primary key,
	Nome varchar(255),
	Endereco varchar(255)
);

-Criação de relacionamentos Livros e Editoras-
alter table livros 
add column ID_Editora INT references Editora(ID_Editora);

-Exclusão de colunas e Endereço-
alter table livros 
drop column Editora,
drop column Endereco_Editora;

-Criação de tabela Categoria-
create table Categoria(
	ID_Categoria SERIAL primary key,
	Nome varchar(255)
);

-Criar relacionamento Livros e Categoria-
alter table Livros 
add column ID_Categoria INT REFERENCES Categoria(ID_Categoria);

-Excluir a coluna Categoria na tabela Livros-
alter table Livros 
drop column Categoria;

-Criação tabela Autor-
create table Autor(
	ID_Autores SERIAL primary key,
	Nome varchar(255)
);

-Criação de relacionamento de Autor e Livros-
alter table Livros 
add column ID_Autor INT REFERENCES Autor(ID_Autor);

-Exclusão de coluna Autor na tabela livros-
alter table livros 
drop column Autor;

--delete table Livros--
--delete database livraria--



