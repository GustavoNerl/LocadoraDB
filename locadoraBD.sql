create table D_genero (
ID int primary key auto_increment,
DESCRICAO nvarchar(20)
);

CREATE TABLE D_midia (
ID int primary key auto_increment,
DESCRICAO char(20)
);

CREATE TABLE D_filmes (
ID int primary key auto_increment,
DESCRICAO char(50),
GENERO int, 
MIDIA int,
foreign key (GENERO) references D_genero(ID),
foreign key (MIDIA) references D_midia(ID)
);

CREATE TABLE D_cliente (
CPF int primary key not null,
NOME char(100),
TELEFONE char(10),
ENDERECO char(100),
EMAIL char(100),
DATA_NASC date
);

CREATE TABLE D_funcionario (
ID int primary key auto_increment,
NOME char(100),
CARGO char(30),
DATA_NASC date
);

CREATE TABLE F_locacao (
ID int primary key auto_increment,
ID_FILME int,
ID_CLIENTE int,
ID_FUNCIONARIO int,
DATA_LOCACAO date,
DATA_DEVOLUCAO date,
foreign key (ID_FILME) references D_filmes(ID),
foreign key (ID_CLIENTE) references D_cliente(CPF),
foreign key (ID_FUNCIONARIO) references D_funcionario(ID)
);

ALTER TABLE F_locacao
add VALOR DECIMAL (10,2);

ALTER TABLE F_locacao;
drop table F_locacao

USE locadoradb

