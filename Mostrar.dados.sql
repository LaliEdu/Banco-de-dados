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

select * from categoria c ;
select * from autor a ;
