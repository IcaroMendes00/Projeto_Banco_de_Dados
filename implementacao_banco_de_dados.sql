
/////////////// CRIAÇÃO DO BANCO ///////////////

create database Cinesercla;

use Cinesercla;

/////////////// CRIAÇÃO DE TABELAS ///////////////

create table Cinema(
    id_cinema int not null auto_increment,
    nome varchar(45) not null,
    CNPJ varchar(14) unique key not null,
    localizacao varchar(60) not null,
    email varchar (45) not null,
    primary key(id_cinema)
);

create table Sala(
    id_sala int not null auto_increment,
    capacidade int not null,
    numero_da_sala int not null,
    cinema_id int not null, 
    FOREIGN KEY(cinema_id) REFERENCES Cinema(id_cinema),
    primary key(id_sala)
);

create table Funcionario(
    id_funcionario int not null auto_increment,
    nome varchar(45) not null,
    cpf varchar(11) unique key not null,
    endereco varchar(60) not null,
    telefone char(11),
    salario double not null,
    tipo char(3) not null,
    chefiado int not null,
    cinema_id int not null,
    FOREIGN KEY(cinema_id) REFERENCES Cinema(id_cinema),
    primary key(id_funcionario)
);

create table Tecnico(
    id_tecnico int not null auto_increment,
    certificado varchar(45) not null,
    funcionario_id int not null,
    FOREIGN KEY(funcionario_id) REFERENCES Funcionario(id_funcionario),
    sala_id int not null,
    FOREIGN KEY(sala_id) REFERENCES Sala(id_sala),
    primary key(id_tecnico)
);

create table Filme(
    id_filme int not null auto_increment,
    titulo varchar(45) unique key not null,
    duracao time not null,
    status_cartaz bit(1) not null,
    ano_lancamento date not null,
    primary key(id_filme)
);

create table Sala_filme(
    id_sala_filme int not null auto_increment,
    sala_id int not null,
    filme_id int not null,
    FOREIGN KEY(sala_id) REFERENCES Sala(id_sala),
    FOREIGN KEY(filme_id) REFERENCES Filme(id_filme),
    primary key(id_sala_filme)
);

create table Atores(
    id_ator int not null auto_increment,
    nome varchar(45) not null,
    nacionalidade varchar(45) not null,
    data_nascimento date not null, 
    primary key(id_ator)
);

create table Atores_filme(
    id_ator_filme int not null auto_increment,
    ator_id int not null,
    filme_id int not null,
    FOREIGN KEY(ator_id) REFERENCES Atores(id_ator),
    FOREIGN KEY(filme_id) REFERENCES Filme(id_filme),
    primary key(id_ator_filme)
);

create table Genero(
    id_genero int not null auto_increment,
    nome varchar(45) not null,
    primary key(id_genero)
);

create table Genero_filme(
    id_genero_filme int not null auto_increment,
    genero_id int not null,
    filme_id int not null,
    FOREIGN KEY(genero_id) REFERENCES Genero(id_genero),
    FOREIGN KEY(filme_id) REFERENCES Filme(id_filme),
    primary key(id_genero_filme)
);

create table Sessao(
    id_sessao int not null auto_increment,
    data_horario datetime not null,
    filme_id int not null,
    FOREIGN KEY(filme_id) REFERENCES Filme(id_filme),
    primary key(id_sessao)
);

create table Bilhete(
    id_bilhete int not null auto_increment,
    assento varchar(4) not null,
    preco double not null,
    status_venda bit(1) not null,
    sessao_id int not null,
    pedido_id int not null,
    FOREIGN KEY(sessao_id) REFERENCES Sessao(id_sessao),
    FOREIGN KEY(pedido_id) REFERENCES Pedidos(id_pedido),
    primary key(id_bilhete)
);

create table Pedidos(
    id_pedido int not null auto_increment,
    data_hora datetime not null,
    valor double not null,
    cliente_id int not null,
    FOREIGN KEY(cliente_id) REFERENCES Cliente(id_cliente),
    primary key(id_pedido)
);

create table Cliente(
    id_cliente int not null auto_increment,
    nome varchar(45) not null,
    email varchar(45) not null,
    cpf varchar(11) unique key not null,
    telefone char(11),
    tipo varchar(345) not null,
    primary key(id_cliente)
);

create table Estudante(
    id_estudante int not null auto_increment,
    declaracao varchar(45) not null,
    cliente_id int not null,
    FOREIGN KEY(cliente_id) REFERENCES Cliente(id_cliente),
    primary key(id_estudante)
);

create table Doador(
    id_doador int not null auto_increment,
    carteira_doador varchar(45) not null,
    cliente_id int not null,
    FOREIGN KEY(cliente_id) REFERENCES Cliente(id_cliente),
    primary key(id_doador)
);

/// CODIGO DA MEIA ENTRADA

UPDATE Pedidos
SET valor = valor / 2
WHERE cliente_id IN (SELECT id_cliente FROM Cliente WHERE tipo = 'Estudante' OR tipo = 'Doador');
