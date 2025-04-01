--Trigger para registrar alterações nos preços dos produtos--
create table LogPrecoProdutos(
id SERIAL primary key,
produto_id INT,
preco_antigo DECIMAL(10,2),
preco_novp DECIMAL(10,2),
data_alteracao TIMESTAMP default CURRENT_TIMESTAMP
);

--Criando a Trigger--
create of replace function registrar_alteracao_preco()
returns trigger 
language plpgsql
as $$
begin
	if new.preco<>old.preco then
	insert into LogPrecosProdutos(produto_id, preco_antigo, preco_novo)
	values (old.id, old.preco, new.preco);
  end if;
  return new;
end;
$$

create trigger trigger_alteracao_preco
after update of preco on Produtos
for each row
execute function registrar_alteracao_preco();

