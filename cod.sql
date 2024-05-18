show databases;
create database projeto_oficina;
use projeto_oficina;


create table Cliente(
		idCliente int auto_increment primary key,
        Nome varchar(20) not null,
        Sobrenome varchar(30) not null,
        CPF char(11)not null,
        DataNasc date not null,
        Endereco varchar(45) not null
);

create table Veiculo(
		idVeiculo int auto_increment primary key,
        Placa char(7) not null,
        Cor varchar(30) not null,
        Marca varchar(45) not null,
        constraint fk_veiculo_cliente foreign key (idVeiculo) references Cliente(idCliente)
);

create table OrdemServico(
		idOServico int auto_increment primary key,
        DataEmissao date not null,
        DataConclusao date not null,
        StatusVeiculo ENUM('Em espera', 'Em manutenção', 'Concluído') default 'Em manutenção',
        TipoServico varchar(45) not null,
        Preco int not null,
        constraint fk_ordemservico_cliente foreign key (idOServico) references Cliente(idCliente)
);

create table Mecanico(
		idMecanico int auto_increment primary key,
        Nome varchar(20) not null,
        Sobrenome varchar(30) not null,
        CPF char(11)not null,
        DataNasc date not null,
        Especialidade ENUM('Revisão', 'Parte elétrica', 'Martelinho de Ouro') not null,
        Endereco varchar(45) not null
);

create table OrdemServico_Mecanico(
		idOServico int,
        idOMecanico int,
        primary key (idOServico, idOMecanico),
        constraint fk_ordemservico_mecanico_servico foreign key (idOServico) references OrdemServico(idOServico),
        constraint fk_ordemservico_mecanico_mecanico foreign key (idOMecanico) references Mecanico(idMecanico)
);





