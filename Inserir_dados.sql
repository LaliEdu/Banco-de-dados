insert into livros (Titulo, id_Editora, id_categoria, id_autor) values
('Despencando na Programação', 1,5,3),
('Traduzindo o Código', 3,3,1),
('Respirando embaixo dagua', 2,1,2),
('Respeitando as Regras', 1,4,2);

insert into Editora (Nome, Endereco) values
('Amostradinha','Rua Cheia de água n 125'),
('Cheia de Graça','Rua Feliz, Alameda Contente n 123'),
('Ambrosio','Rua Marques de Figueredo n 1502');

insert into Categoria (Nome) values
('Ficção'),
('Romance'),
('Ação'),
('Policial'),
('Auto Ajuda');

insert into Autor (Nome) values
('Clarice Lispector'),
('Márcio Arruda'),
('Machado de Assis');

-Inserção com os relacionamentos-
insert into livros (Titulo, id_Editora, id_categoria, id_autor)
	values
		('O mundo depois de amanhã',
		(select id_Editora from Editora where nome = 'Amostradinha'), 
		(select id_categoria from Categoria where nome = 'Ficção'),
		(select id_autor from Autor where nome = 'Clarice Lispector'));

--Novos Dados--
insert into livros (Titulo, id_Editora, id_categoria, id_autor) values
('Sol da meia noite', 1,1,1);

insert into Editora (Nome, Endereco) values
('Crepusculo','Rua da fofoca n 1104');

insert into Categoria (Nome) values
('Romance');

insert into Autor (Nome) values
('Stephenie Meyer');

insert into livros (Titulo, id_Editora, id_categoria, id_autor)
	values
		('Sol da meia noite',
		(select id_Editora from Editora where nome = 'Crepusculo'), 
		(select id_categoria from Categoria where nome = 'Romance'),
		(select id_autor from Autor where nome = 'Stephenie Meyer')
	);

insert into livros (preco) values
(55.00),
(39.00),
(25.00),
(46.00),
(20.00),
(19.00);

-Mostrar Dados-
select * from Categoria c ;
select * from autor a ;
select * from editora e ;