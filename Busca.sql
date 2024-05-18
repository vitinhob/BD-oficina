show tables;

select * from Cliente;

-- seleciona a coluna cor da tabela veiculo onde a cor começa com letra B
select Cor from Veiculo where Cor like 'B%';

-- junta o nome e sobre nome
select concat('O nome do mecânico é: ', Nome, ' ', Sobrenome) as nome_completo from Mecanico;

select Nome, DataNasc from Mecanico order by DataNasc desc;

select count(DataEmissao) from OrdemServico;

-- junta a qtd de carro por marca
select Marca, count(*) as qtd_marca from Veiculo group by Marca;

-- pega a data e acha quais dela tiveram o preço do concerto maio que 200
select DataConclusao, count(*) from OrdemServico where Preco>200 group by DataConclusao having count(*);
