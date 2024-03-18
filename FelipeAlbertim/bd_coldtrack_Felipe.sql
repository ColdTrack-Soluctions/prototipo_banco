-- CRIANDO A NOSSA BASE DE DADOS
create database bd_coldtrack;

-- ULTILIZANDO A BASE DE DADOS
use bd_coldtrack;


-- PRIMEIRA TABELA ESTÁ ESPECIFICANDO CADA REFRIGERADOR 
create table refrigerador(
idRefrigerador int primary key auto_increment,
localFisico varchar(100),
-- FUTURAMENTE TERÁ UM LINK COM A TABELA DA EMPRESA CONTRATANTE
marca varchar(50),
modelo varchar(50),
capacidadeLitros varchar(4),
valor float
);

-- INSERINDO ALGUNS REFRIGERADORES AO NOSSO SISTEMA
insert into refrigerador values 
(
default,'Área Frigorifica - NORTE','DuFrio','Duas Portas','600',7565.09),
(default,'Área Frigorifica - NORTE','DuFrio','Duas Portas','600',7565.09),
(default,'Área Frigorifica - NORTE','DuFrio','Duas Portas','600',7565.09),
(default,'Área Frigorifica - NORTE','DuFrio','Duas Portas','600',7565.09),

-- OUTRO REFRIGERADOR EM OUTRA ÁREA

(default,'Área de Laticinios - LESTE','Metal Frio','Uma Porta','450',3500),
(default,'Área de Laticinios - LESTE','Metal Frio','Uma Porta','450',3500),
(default,'Área de Laticinios - LESTE','Metal Frio','Uma Porta','450',3500),
(default,'Área de Laticinios - LESTE','Metal Frio','Uma Porta','450',3500)
;

-- MOSTRANDO TODOS OS REFRIGERADORES EM TODAS AS ÁREAS
select * from refrigerador;

-- MOSTRANDO APENAS OS REFRIGERADORES COM CAPACIDADE DE 450 Litros
select * from refrigerador where capacidadeLitros = '450';

/*-----------------------------------------------------------------------------*/

-- CRIANDO UMA TABELA PARA ARMAZENAR OS DADOS FÍSICOS DO ARDUINO

create table arduino(
idArduino int primary key auto_increment,
modeloArduino varchar(50),
localFisico varchar(100),
versaoSistema varchar(100)
);

-- INSERINDO ALGUNS REGISTRO SOBRE O ARDUINO 
insert into arduino values (null,'Arduino UNO','Área Carnes - LESTE','1.0.0'),
(null,'Arduino UNO','Área de Laticinios - NORTE','1.0.0'),
(null,'Arduino UNO','Área Embutidos - SUL','1.0.0')
;

-- MOSTANDO QUANTOS ARDUINOS ESTÃO INSTALADOS EM DEVIDO LUGAR
select * from arduino;


-- CRIANDO UMA TABELA PARA MOSTRAR QUAIS SÃO OS SENSORES QUE ESTAMOS ULTILIZANDO

create table sensores(
idSensor int primary key auto_increment,
nome varchar(50),
funcao varchar(30),
descricao longtext
);

-- INSERINDO DADOS SOBRE QUAIS SENSORES ESTAMOS ULTILIZANDO
insert into sensores values 
(null, 'TRCT 5000', 'Sensor de Proximidade','Responsável por captar quantidade de vezes que devida porta foi aberta ou fechada'),
(null,'LM 35',' Sensor de Temperatura', 'Captura temperaturas de -55°C até 150°C, com esse sensor iremos monitorar a temperatura INTERNA do refrigerador')
;

-- MOSTRANDO QUAIS SENSORES ESTAMOS ULTILIZANDO ATUALMENTE NO PROJETO 
select * from sensores;

-- CRIANDO UMA TABELA PARA INSERIR OS DADOS REGISTRADOS COM NOSSO SENSORES (TEMPERATURA & PROXIMIDADE)
create table dadosCaptura(
-- idArduinoResponsavelCaptura 'fk'
-- idRefrigerador 'fk'
idDados int primary key auto_increment,
temperatura float,
proximidade char(1),
dataHora datetime default current_timestamp
);

/* INSERINDO ALGUNS REGRISTROS DE DADOS DOS SENSORES (APENAS UM EXEMPLO)

	OBS : Em nosso projeto real usaremos uma API que irá dizer ao banco apenas quando as portas foram abertas e o seu respectivo horario.
*/
insert into dadosCaptura values
(default,2.4,'1',default),
(default,2.5,'1',default),
(default,2.4,'1',default),
(default,2.4,'1',default),
(default,2.2,'0',default);

-- VIZUALIZANDO DADOS DE ABERTURA 
select * from dadosCaptura;

-- VIZUALIZANDO DADOS DE ABERTURA DO DIA '18-03-2024'
SELECT * FROM dadosCaptura WHERE DATE(dataHora) = '2024-03-18';


-- AQUI É ONDE ESTARA ARMAZENADOS OS DADOS DE CADASTRO DE NOSSOS CLIENTES (VOCÊ - EMPRESA)
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

-- INSERINDO EMPRESAS CONTRATANTES DE NOSSO SISTEMA
insert into contratante values
(null,'DuFrio','01754239000462','Augusto Fisher Melo','augusto.fisher.melo@dufrio.com','Praça Jácomo Zanella','187','05038010','Barra Funda - São Paulo'),
(null,'Metal Frio','04821041000108',' Marcelo Lima',' marcelo.lima@metal.frio.com','Rua Abrahão Gonçalves Braga','412','09581680','Sacomã - São Paulo');

-- MOSTRANDO TODOS OS NOSSOS CLIENTES JUNTAMENTE COM OS DEVIDOS DADOS
select * from contratante;


-- CRIANDO UMA TABELA SOBRE NÓS (COLD TRACK)
create table coldtrack(
idUnidade int primary key auto_increment,
cnpj char(14),
responsavel varchar(50),
emailResponsavel varchar(50),
logradouro varchar(100),
numero varchar(10),
cep char(8),
complemento varchar(100)
);

-- CRIANDO NOVAS UNIDADES COLDTRACK
insert into coldtrack values (null,'04821041000108','Cindy oliveira','cindy.oliveira@coldtrack.com','Rua Haddock Lobo','595','01414001','Travessa da Av. Paulista - São Paulo');

-- MOSTRANDO QUAIS UNIDADES TEMOS !
select * from coldtrack;

/*		!!!!!!!!!!	APENAS UM PROTÓTIPO		!!!!!!!!!!

FUTURAMENTE TERAMOS OUTRA TABELA COM FUNCIONARIOS, CARGOS, ENDEREÇOS... ETC

*/

