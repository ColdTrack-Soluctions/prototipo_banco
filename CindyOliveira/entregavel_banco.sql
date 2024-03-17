USE sprint1;

CREATE TABLE cadastro (
idCadastro int primary key auto_increment,
nome varchar (50) not null,
dtNasc date,
cpf char (11),
telefone varchar (15),
email varchar (80),
senha varchar (90));

SELECT * FROM cadastro;

INSERT INTO cadastro VALUES
(default, 'Julia Souza', '2001-12-30', '08588931890', '7598316-5934', 'juliasouza@gmail.com', '12345'),
(default, 'Amanda Loures', '1999-10-21', '37599812385', '119786-4524', 'amandinha01@gmail.com', '895328'),
(default, 'Roberto Gomes', '1990-05-17', '09155123170', '1198315-0897', 'robertog@outlook.com', '765b89'),
(default, 'Fernanda Caramico', '2001-08-25', '04088712332', '3298897-7654', 'fernandacaramico@sptech.school', 'fe6589oo');

SELECT * FROM cadastro;

SELECT * FROM cadastro WHERE nome != 'Amanda Loures';

DESCRIBE cadastro;


CREATE TABLE ColdTrack (
idColdTrack int primary key,
cnpj char (14),
responsavel varchar (40), 
email varchar (40),
logradouro varchar (80),
numero varchar (10),
cep char (8));

DESCRIBE ColdTrack;

INSERT INTO ColdTrack VALUES 
(1, '99807854000190', 'Felipe Albertim', 'cold.track.solutions@gmail.com', 'Rua Hadoock Lobo', 538, '01310930');

SELECT * FROM ColdTrack;


CREATE TABLE refrigerador (
idRefrigerador int primary key,
localizacao varchar (90),
marca varchar (15),
modelo varchar (50),
capacidade varchar (4),
valor int);

INSERT INTO refrigerador VALUES 
(1, 'corredorA', 'Frigelar', 'Expositor Vertical', 366, 2799),
(2, 'corredorB', 'CastellMaq', 'VB40AH', 406, 4511),
(3, 'corredorC', 'MetalFrio', 'EEV500P2', 510, 3969);

SELECT * FROM refrigerador;


CREATE TABLE sensores (
nome varchar (20),
funcao varchar (50),
descricao varchar (100));
 
 ALTER TABLE sensores ADD COLUMN idSensores int primary key;
 
 DESCRIBE sensores;
 
 INSERT INTO sensores VALUES
 ('LM35', 'Monitorar Temperatura', 'Usaremos esse sensor para evitar a perca do seu produto', 1),
 ('TRC5000', 'Otimizar vendas', 'Ver qual produto está sendo mais requisitado', 2); 
 
 SELECT * FROM sensores;
 
 CREATE TABLE contratante (
 idContratante int primary key auto_increment,
 nomeEmpresa varchar (50),
 cnpj char (14),
 responsavel varchar (50),
 emailEmpresa varchar (50),
 logradouro varchar (100),
 numero varchar (10),
 cep char (8));
  
  DESCRIBE contratante;
  
  INSERT INTO contratante VALUES 
  (1, 'Frigelar', 89675007000498, 'Marcos Londres', 'frigelar@gmail.com', 'Avenida Paulista', 780, 01153000),
  (2, 'MetalFrio', 37768268000223, 'Gisele Bunchen', 'metalfrio.gelo@gmail.com', 'Rua Bela Vista', 245, 01197000);
  
  SELECT * FROM contratante;
  
 
 
 
 
 
 





