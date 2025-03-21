-Mostrar dados-
select * from livros l ; 

select Titulo from livros l where titulo = 'O mundo depois de amanhã';
select Titulo from livros l where id_categoria = 1;

select Titulo from livros l order by titulo asc;
select Titulo from livros l order by titulo desc;

select Titulo from livros l limit 2;

-join-

select livros.titulo, autor.nome
from livros 
inner join autor on livros.id_autor = autor.id_autor

-Retorna registro que tem correspondência em ambas tabelas-
select livros.titulo, autor.nome 
from livros 
inner join autor on livros.id_autor = autor.id_autor ; 

-Retorna registro de tabela esquerda meos registro da tabela direita-
select livros.titulo , autor.nome 
from livros 
left join autor on livros.id_autor = autor.id_autor ;

-Retorna registro de tabela direita e registro da tabela esquerda-
select Livros.titulo, Autor.nome 
from livros
right join autor  on Livros.id_livro = autor.id_autor ;

-Retorna todos os registros quando há uma correspondencia-
select livros.titulo , autor.nome 
from livros
full outer join autor on livros.id_livro  = autor.id_autor ;

-Retorna os registros correspondentes a todas as tabelas-
select livros.titulo , autor.nome , categoria.nome , editora.nome 
from livros 
inner join autor on livros.id_autor = autor.id_autor 
inner join categoria on livros.id_categoria = categoria.id_categoria 
inner join editora on livros.id_editora  = editora.id_editora ;

select * from categoria c ;
select * from autor a ;
select * from editora e ;
