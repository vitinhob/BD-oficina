use projeto_oficina;

insert into Cliente(Nome, Sobrenome, CPF, DataNasc, Endereco)
		value ('Vitor', 'Gomes', '34568791025', '2000-06-12', 'rua Floreano Peixoto 157'),
			  ('Bruno', 'Regis', '54362791075', '1995-09-25', 'rua Mascaranhas 187'),
              ('Julia', 'Alvez', '84468895027', '2001-08-15', 'rua Agulhas Negras 1157'),
              ('Larisa', 'Silva', '55468791080', '1991-12-10', 'rua Castro Alvez 280'),
              ('Zilda', 'Silveira', '34565565025', '2003-04-01', 'rua Frederico Tavares 790'),
              ('Gilberto', 'Soares', '44568794870', '1997-11-17', 'rua Olavio Bilack 390'),
              ('Luciano', 'Marciel', '55768791884', '1989-02-05', 'rua Ipuruba Pará 720');


insert into Veiculo(Placa, Cor, Marca)
		values ('ABC1234', 'Branco', 'Fiat'),
			   ('CBA2134', 'Azul', 'Honda'),
               ('EFG4321', 'Vermelho', 'Fiate'),
               ('GHI1144', 'Cinza', 'Volkswagen'),
               ('KLM7434', 'Branco', 'Honda'),
               ('GHG1289', 'Preto', 'Fiat');


insert into OrdemServico( DataEmissao, DataConclusao, StatusVeiculo, TipoServico, Preco)
		values ('2024-10-05', '2024-10-10', 'Concluído', 'Troca de Filtro arcondicionado', 200),
			   ('2024-10-07', '2024-10-07', 'Concluído', 'Troca de óleo', 115),
               ('2024-10-15', '2024-10-25', default, 'Desamassar batidas e polimento', 700),
               ('2024-10-20', '2024-10-29', 'Em espera', 'Revisão', 360),
               ('2024-10-17', '2024-10-20', 'Em manutenção', 'Reparo luzes do carro', 150),
			   ('2024-10-10', '2024-10-14', default, 'Revisão', 360);

insert into Mecanico(Nome, Sobrenome, CPF, DataNasc, Especialidade, Endereco)
		values ('Carlos', 'Ferraz', 12365478901, '1993-07-14', 'Revisão', 'rua Das palmas 587'),
			   ('Beto', 'Russato', 22365478955, '1995-09-17', 'Parte elétrica', 'rua Luis boa 1517'),
               ('Mauro', 'Silva', 55665478901, '1985-02-22', 'Martelinho de Ouro', 'rua Don Pedro 445');

show tables;

select * from Cliente;


               