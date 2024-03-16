create database bd_coldtrack;

use bd_coldtrack;

create table refrigerador(
idRefrigerador int primary key auto_increment,
localFisico varchar(100),
qtdRefrigerador varchar(4),
-- FUTURAMENTE TERÁ A FK DA EMPRESA CONTRATANTE
marca varchar(50),
modelo varchar(50),
capacidade varchar(4),
valor int
);

create table dadosArduino(
idArduino int primary key auto_increment,
modeloArduino varchar(50),
localFisico varchar(100),
data_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
temperatura float,
umidade float
);

create table sensores(
idSensor int primary key auto_increment,
nome varchar(50),
funcao varchar(20),
descricao varchar(100)
);

create table contratante(
idContratante int primary key auto_increment,
nomeEmpresa varchar(50) not null,
cnpj char(14),
responsavel varchar(50),
emailResponsavel varchar(50),
logradouro varchar(100),
numero varchar(10),
cep char(8),
complemento varchar(100)
);

create table coldtrack(


idUnidade int primary key auto_increment,
cnpj char(14),
responsavel varchar(50),
emailResponsavel varchar(50),
logradouro varchar(100),
numero varchar(10),
cep char(8),
complemento varchar(100)

/*		!!!!!!!!!!	APENAS UM PROTÓTIPO		!!!!!!!!!!

FUTURAMENTE TERAMOS OUTRA TABELA COM FUNCIONARIOS, CARGOS, ENDEREÇOS... ETC

*/
);
