create or replace procedure atualizar_preco_produto(
    produto_id INT,
    novo_preco DECIMAL(10, 2)
)
language plpgsql
AS $$
BEGIN
    update Produtos
    set preco = novo_preco
    where id = produto_id;
   
 -- Adicionar mais lógica, como logs ou notificações--
raise notice 'Preço do produto % atualizado para %', produto_id, novo_preco;

--Confirma a transação--
  	commit;
  end;
 $$;

execute:
call atualizar_preco_produto(1, 1300.00);

--Criar View consulta pre pronta de categorização de dados--
create or replace view ProdutosPorCategoriaComContagemClientes as
select
	c.nome as categoria,
	p.nome as produto,
	count (cp.clientes_id) as numero_de_clientes
from
	categorias c
join
	profutos p on c.id = p.categoria_id
left join 
	Clientes_produtos cp on p.id = cp.produto_id
group by
	c.nome, p.nome
order by 
	c.nome, p.nome;



