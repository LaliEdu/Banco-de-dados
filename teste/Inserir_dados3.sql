-Inserindo dados para Permissões-
insert into Permissoes(Nome, Descricao) values
('admin', 'Administrador do Sistema'),
('vendedor', 'Vendedor com acesso limitado'),
('cliente', 'Cliente com acesso ao próprio perfil');

-Inserindo dados para Usuarios-
insert into Usuarios(Nome, Email, Senha, Permissao_id) values
('Administrador', 'admin@sisvendas.com', 'senha123', 1),
('Vendedor 1', 'vendedor1@sisvendas.com', 'senha456', 2),
('Cliente 1', 'cliente1@sisvendas.com', 'senha789', 3);

-Inserindo dados para Clientes-
insert into Clientes(Nome, Email, Telefone, Endereco) values
('Cliente A', 'clientea@email.com', '1234-5678', 'Rua A, 123'),
('Cliente B', 'clienteb@email.com', '9876-5432', 'Rua B, 456'),
('Cliente C', 'clientec@email.com', '1111-2222', 'Rua C, 789');

-Inserindo dados para Categorias-
insert into Categorias(Nome, Descricao) values
('Eletrônicos', 'Produtos eletrônicos em geral'),
('Vestuário', 'Roupas e acessórios'),
('Alimentos', 'Produtos alimentícios');

-Inserindo dados para Produtos-
insert into Produtos(nome, descricao, preco, categoria_id) values 
('Smartphone', 'Smartphone com câmera de alta resolução', 1200.00, 1),
('Camiseta', 'Camiseta de algodão', 50.00, 2),
('Arroz', 'Arroz branco tipo 1', 10.00, 3),
('Notebook', 'Notebook com processador Intel Core i7', 3500.00, 1);

-Inserindo dados para Clientes_Produtos-
INSERT INTO Clientes_Produtos (cliente_id, produto_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4);

-Inserindo dados de exemplo para FormasPagamento-
insert into FormasPagamento (nome, descricao) values 
('Cartão de crédito', 'Pagamento com cartão de crédito'),
('Boleto bancário', 'Pagamento com boleto bancário'),
('Pix', 'Pagamento instantâneo via Pix');








