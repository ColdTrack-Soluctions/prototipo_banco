CREATE DATABASE sprint_ind;
USE sprint_ind;

CREATE TABLE coldtrack (
idEmpresa int primary key auto_increment,
CNPJ char(14),
emailEmpresa varchar(50),
logradouro varchar(50),
numero int,
cep char(10),
complemento varchar (50));

DESCRIBE coldtrack;

CREATE TABLE funcionarios_CT (
idFuncionario int primary key auto_increment,
nome varchar(50),
funcao varchar(65),
emailFuncionario varchar(100));

DESCRIBE funcionarios_CT;

CREATE TABLE cliente (
idCliente int primary key auto_increment,
nomeResponsavel varchar(50),
emailResponsavel varchar(100),
logradouro varchar(50),
numero int,
cep char(10),
complemento varchar(50));

DESCRIBE cliente;

CREATE TABLE refrigeradores (
idRefrigerador int primary key auto_increment,
quantidade int,
modelo varchar(50),
qtdPortas int,
preco decimal(10,2),
p_armazenado varchar (50),
temperatura_p varchar (50));

DESCRIBE refrigeradores;

CREATE TABLE sensores (
idSensor int primary key auto_increment,
nome varchar(40),
modeloArduino varchar(50),
localFisico timestamp,
temperatura float,
proximidade int);

DESCRIBE sensores;

CREATE TABLE cadastro (
idCadastro int primary key auto_increment,
nomePontodeVenda varchar(50),
emailPV varchar(100),
senha varchar(50),
CNPJ char(14),
logradouro varchar(50),
numero int,
complemento varchar(50),
CEP char(10),
cidade varchar (50),
estado varchar (50),
país varchar(50));

DESCRIBE cadastro;


