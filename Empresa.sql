/*Grupo:    Gabriel Fleig - 11501401
            Kelvin Williams - 11500272
            Valfredo Santos - 11504304*/


/*Implementação de Banco de Dados*/

CREATE DATABASE Empresa;

USE Empresa;


CREATE TABLE Pais (
	sigla 	CHAR(2) 	NOT NULL,
	nome 	CHAR(40),
	PRIMARY KEY (sigla)
);


CREATE TABLE UF (
	Sigla 	CHAR(2) 	NOT NULL,
	pais 	CHAR(2) 	NOT NULL,
	nome 	CHAR(30),
	PRIMARY KEY (Sigla,pais),
	FOREIGN KEY (pais) REFERENCES Pais(sigla)
);


CREATE TABLE Cidade (
	Codigo 	INT			NOT NULL	AUTO_INCREMENT,
	Uf 		CHAR(2),
	Pais 	CHAR(2),
	Nome 	CHAR(40),
	PRIMARY KEY(Codigo),
	FOREIGN KEY (Uf,Pais) REFERENCES UF(Sigla,pais)
);


CREATE TABLE Funcao (
	Codigo	INT			NOT NULL	AUTO_INCREMENT,
	Nome 	CHAR(50),
	Salario DOUBLE(15,2),
	PRIMARY KEY (Codigo)
);


CREATE TABLE Tipo_Produto(
	Codigo 	SMALLINT 	NOT NULL	AUTO_INCREMENT,
	Nome 	CHAR(50),
	PRIMARY KEY (Codigo)
);


CREATE TABLE Produto(
	Codigo 			SMALLINT 	 	NOT NULL	AUTO_INCREMENT,
	Nome 			CHAR(40) 		NOT NULL,
	Tipo 			SMALLINT 		NOT NULL,
	Unidade 		CHAR(3) 		NOT NULL,
	estoque_real 	NUMERIC(16,3),
	estoque_virtual NUMERIC(16,3),
	estoque_minimo 	NUMERIC(16,3),
	Custo DOUBLE(15,2),
	Venda DOUBLE(15,2),
	PRIMARY KEY (Codigo),
	FOREIGN KEY (Tipo) REFERENCES Tipo_Produto(Codigo)
);


CREATE TABLE Cliente (
	Codigo 			SMALLINT AUTO_INCREMENT NOT NULL,
 	cgc_cpf 		CHAR(15) 				NOT NULL,
 	Tipo 			CHAR(1) 				NOT NULL,
 	razao_social 	CHAR(30) 				NOT NULL,
 	tipo_logradouro CHAR(3) 				NOT NULL,
 	Logradouro 		CHAR(30),
 	Complemento 	CHAR(20),
 	Bairro 			CHAR(20) 				NOT NULL,
	Cidade 			INT 					NOT NULL,
	Uf 				CHAR(2),
	Pais 			CHAR(2),
 	Cep 			CHAR(8) 				NOT NULL,
 	Fone 			CHAR(14) 				NOT NULL,
	Contato 		CHAR(30) 				NOT NULL,
	Fax 			CHAR(14),
	insc_est 		CHAR(16),
	Email 			CHAR(40),
	Obs 			TEXT,
	PRIMARY KEY (Codigo),
	FOREIGN KEY (Cidade) 	REFERENCES Cidade(Codigo),
	FOREIGN KEY (Uf,Pais) 	REFERENCES UF(Sigla,pais),
	CONSTRAINT CHK_Tipo 			CHECK (Tipo = 'F' OR Tipo = 'J'),
	CONSTRAINT CHK_tipo_logradouro 	CHECK (tipo_logradouro = 'AVE' OR tipo_logradouro = 'RUA' OR 
										   tipo_logradouro = 'PRA' OR tipo_logradouro = 'TRA' OR 
										   tipo_logradouro = 'ROD' OR tipo_logradouro = 'VIL' )

);

CREATE TABLE Funcionario(
	Codigo 				INT				NOT NULL	AUTO_INCREMENT,
	Nome 				CHAR(30)		NOT NULL,
	Sexo 				CHAR(1) 		NOT NULL,
	Setor 				SMALLINT 		NOT NULL,
	ramal_individual	CHAR(4),
	estado_civil 		CHAR(1) 		NOT NULL,
	data_nascimento 	DATETIME 		NOT NULL,
	rg_numero 			CHAR(15),
	nacionalidade 		CHAR(2) 		NOT NULL,
	naturalidade 		INT 			NOT NULL,
	Cpf 				CHAR(11),
	sangue_fator 		CHAR(2),
	sangue_rh 			CHAR(1),
	tipo_logradouro 	CHAR(3),
	logradouro 			CHAR(30) 		NOT NULL,
	complemento 		CHAR(30),
	Bairro 				CHAR(20),
	Cidade 				INT 			NOT NULL,
	Uf 					CHAR(2),
	Cep 				CHAR(8),
	Fone 				CHAR(14),
	Funcao 				INT 			NOT NULL,
	admissao 			DATETIME 		NOT NULL,
	Email 				CHAR(40),
	Salario 			DOUBLE(15,2)	NOT NULL,
	PRIMARY KEY(Codigo),
	FOREIGN KEY(nacionalidade)	REFERENCES Pais(sigla),
	FOREIGN KEY(naturalidade) 	REFERENCES Cidade(Codigo),
	FOREIGN KEY(Cidade) 		REFERENCES Cidade(Codigo),
	FOREIGN KEY(Uf) 			REFERENCES UF(Sigla),
	FOREIGN KEY(Funcao) 		REFERENCES Funcao(Codigo),
	CONSTRAINT CHK_Sexo 		CHECK ( Sexo = 'M' OR Sexo = 'F'),
	CONSTRAINT CHK_estado_civil CHECK ( estado_civil = 'S' OR estado_civil = 'C' OR estado_civil = 'D' OR 
										estado_civil = 'V' OR estado_civil = 'O')
);

CREATE TABLE Pedido(
	Codigo 			INT				NOT NULL	AUTO_INCREMENT,
	Cliente 		SMALLINT 		NOT NULL,
	data_pedido		DATETIME 		NOT NULL,
	Total 			DOUBLE(15,2),
	situacao 		CHAR(1),
	vendedor 		INT,
	PRIMARY KEY(Codigo),
	FOREIGN KEY(Cliente)	REFERENCES Cliente(Codigo),
	FOREIGN KEY(vendedor) 	REFERENCES Funcionario(Codigo),
	CONSTRAINT CHK_situacao CHECK ( situacao = 'A' OR situacao = 'P' OR situacao = 'T')
);


CREATE TABLE Itens_Pedido(
	Pedido 		INT 			NOT NULL,
	Produto 	SMALLINT 		NOT NULL,
	Quant	 	NUMERIC(10,3) 	NOT NULL,
	Total 		DOUBLE(15,2),
	situacao 	CHAR(1),
	PRIMARY KEY(Pedido,Produto),
	FOREIGN KEY(Pedido) 	REFERENCES Pedido(Codigo),
	FOREIGN KEY(Produto) 	REFERENCES Produto(Codigo),
	CONSTRAINT CHK_situacao CHECK ( situacao = 'A' OR situacao = 'P' OR situacao = 'T')
);

CREATE TABLE Setor(
	Codigo 			SMALLINT	NOT NULL	AUTO_INCREMENT,
	Nome 			CHAR(50),
	Sigla 			Char(10),
	Ramal 			CHAR(3),
	superior 		SMALLINT,
	responsavel 	INT,
	PRIMARY KEY(Codigo),
	FOREIGN KEY(superior) 		REFERENCES Setor(Codigo),
	FOREIGN KEY(responsavel) 	REFERENCES Funcionario(Codigo)
);


ALTER TABLE Funcionario ADD FOREIGN KEY(Setor) REFERENCES Setor(Codigo);

/* População do Banco de Dados */

SET FOREIGN_KEY_CHECKS=0;

/*Paises*/
INSERT INTO Pais (sigla,nome) VALUES ('BR','Brasil');
INSERT INTO Pais (sigla,nome) VALUES ('NZ','Nova Zelândia');
INSERT INTO Pais (sigla,nome) VALUES ('DE','Alemanha');
INSERT INTO Pais (sigla,nome) VALUES ('AR','Argentina');
INSERT INTO Pais (sigla,nome) VALUES ('US','Estados Unidos');
INSERT INTO Pais (sigla,nome) VALUES ('CA','Canadá');
INSERT INTO Pais (sigla,nome) VALUES ('IN','India');
INSERT INTO Pais (sigla,nome) VALUES ('IE','Irlanda');
INSERT INTO Pais (sigla,nome) VALUES ('NL','Holanda');
INSERT INTO Pais (sigla,nome) VALUES ('GR','Grécia');
INSERT INTO Pais (sigla,nome) VALUES ('CN','China');
INSERT INTO Pais (sigla,nome) VALUES ('CO','Colômbia');
INSERT INTO Pais (sigla,nome) VALUES ('CG','Congo');
INSERT INTO Pais (sigla,nome) VALUES ('EC','Equador');
INSERT INTO Pais (sigla,nome) VALUES ('JP','Japão');
INSERT INTO Pais (sigla,nome) VALUES ('NO','Noruega');
INSERT INTO Pais (sigla,nome) VALUES ('MX','México');
INSERT INTO Pais (sigla,nome) VALUES ('FR','França');
INSERT INTO Pais (sigla,nome) VALUES ('BE','Bélgica');
INSERT INTO Pais (sigla,nome) VALUES ('CL','Chile');

/*UF's*/
INSERT INTO UF (Sigla,pais,nome) VALUES ('PB','BR','Paraiba');
INSERT INTO UF (Sigla,pais,nome) VALUES ('BA','BR','Bahia');
INSERT INTO UF (Sigla,pais,nome) VALUES ('MG','BR','Minas Gerais');
INSERT INTO UF (Sigla,pais,nome) VALUES ('RJ','BR','Rio de Janeiro');
INSERT INTO UF (Sigla,pais,nome) VALUES ('RN','BR','Rio Grande do Norte');
INSERT INTO UF (Sigla,pais,nome) VALUES ('SP','BR','São Paulo');
INSERT INTO UF (Sigla,pais,nome) VALUES ('AC','BR','Acre');
INSERT INTO UF (Sigla,pais,nome) VALUES ('AM','BR','Amazonas');
INSERT INTO UF (Sigla,pais,nome) VALUES ('CE','BR','Ceará');
INSERT INTO UF (Sigla,pais,nome) VALUES ('DF','BR','Distrito Federal');
INSERT INTO UF (Sigla,pais,nome) VALUES ('ES','BR','Espírito Santo');
INSERT INTO UF (Sigla,pais,nome) VALUES ('MA','BR','Maranhão');
INSERT INTO UF (Sigla,pais,nome) VALUES ('PE','BR','Pernambuco');
INSERT INTO UF (Sigla,pais,nome) VALUES ('TO','BR','Tocantins');
INSERT INTO UF (Sigla,pais,nome) VALUES ('RS','BR','Rio Grande do Sul');
INSERT INTO UF (Sigla,pais,nome) VALUES ('MT','BR','Mato Grosso');
INSERT INTO UF (Sigla,pais,nome) VALUES ('AL','BR','Alagoas');
INSERT INTO UF (Sigla,pais,nome) VALUES ('RO','BR','Rondônia');
INSERT INTO UF (Sigla,pais,nome) VALUES ('GO','BR','Goiás');
INSERT INTO UF (Sigla,pais,nome) VALUES ('SC','BR','Santa Catarina');
INSERT INTO UF (Sigla,pais,nome) VALUES ('CO','US','Connecticut');

/*Cidades*/
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('PB','BR','Joao Pessoa');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('BA','BR','Salvador');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('MG','BR','Belo Horizonte');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('RJ','BR','Rio de Janeiro');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('RN','BR','Natal');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('SP','BR','São Paulo');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('AC','BR','Rio Branco');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('AM','BR','Manaus');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('CE','BR','Fortaleza');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('DF','BR','Brasília');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('ES','BR','Vitória');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('MA','BR','São Luís');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('PE','BR','Recife');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('TO','BR','Palmas');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('RS','BR','Porto Alegre');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('MT','BR','Cuiabá');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('AL','BR','Maceió');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('RO','BR','Porto Velho');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('GO','BR','Goiânia');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('SC','BR','Florianópolis');

/*Funcao*/
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES (1,'Vendedor','500');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES (2,'Empacotador','500');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES (3,'Montador','600');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES (4,'Gerente','2000');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES (5,'Mecânico','800');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES (6,'Faxineiro','500');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES (7,'Engenheiro','1000');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES (8,'Secretario','900');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES (9,'Designer','1000');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES (10,'CEO','10000');

/*Tipo_Produto*/
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES (1,'Pastilha de Freio');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES (2,'Amortecedor');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES (3,'Filtros');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES (4,'Som');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES (5,'Pneu e Roda');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES (6,'Acessórios');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES (7,'Volante');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES (8,'Cano de Escape');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES (9,'Motor');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES (10,'Roda');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES (11,'Farol');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES (12,'Carburador');

/*Produto*/
INSERT INTO Produto VALUES (1,'Pastilha de Freio',1,'QTD',20,18,18,70,200);
INSERT INTO Produto VALUES (2,'Amortecedor dianteiro',2,'QNT',90,85,80,200,400);
INSERT INTO Produto VALUES (3,'Bandeija de suspensão',2,'QNT',50,40,30,250,300);
INSERT INTO Produto VALUES (4,'Filtro da cabine',3,'QNT',60,50,40,150,200);
INSERT INTO Produto VALUES (5,'Filtro de óleo',3,'QNT',80,80,50,175,310);
INSERT INTO Produto VALUES (6,'Purificador de ar',3,'QNT',120,117,115,65,150);
INSERT INTO Produto VALUES (7,'Alto-Falante',4,'QNT',94,90,35,45,105);
INSERT INTO Produto VALUES (8,'Cilindro da roda',5,'QNT',115,111,100,130,215);
INSERT INTO Produto VALUES (9,'Pneu aro 14',5,'QNT',340,230,200,140,220);
INSERT INTO Produto VALUES (10,'Adesivo refletor',6,'QNT',60,59,50,15,40);
INSERT INTO Produto VALUES (11,'Adesivo de coluna',6,'QNT',50,49,35,22,46);
INSERT INTO Produto VALUES (12,'Buzina',6,'QNT',150,145,132,10,25);
INSERT INTO Produto VALUES (13,'Kit vidro elétrico',6,'QNT',70,50,45,170,285);
INSERT INTO Produto VALUES (14,'Tapete do túnel',6,'QNT',175,143,122,24,56);

/*Cliente*/
INSERT INTO Cliente VALUES (1,'54131462177','F','Ednaldo Pereira','PRA','Praça Pereira', 'Prédio Manhole','Centro',1,'PB','BR','75412365','96157666','Pereira Ednaldo','','35772','ednaldo.chance@yahoo.com.br','Ednaldo Pereira');
INSERT INTO Cliente VALUES (2,'84941777411','F','Junji Ito', 'AVE','RUA', 'Casa','Centro',1,'PB','BR','78459632','89564666','Oti Ijnuj','','343271', '','');
INSERT INTO Cliente VALUES (3,'33625417756','F','Rodrigo A. Derlan','AVE','RUA','Casa','Centro',1,'PB','BR','78456932','96158569','Rodrigo ADE','','46575','rodrigo.cervejao@ade.gov','Não fecha negócio com Milone');
INSERT INTO Cliente VALUES (4,'78546314824','F','Miguel T. Mercator','AVE','RUA','Casa','Bancários',1,'PB','BR','78123546','98745123','Michel Teme','','','','');
INSERT INTO Cliente VALUES (5,'16846515256','J','Zurich Moveis','ROD','BR-101','Predio','Centro',3,'MG','BR','96325874','99957666','Kratos','','','','');
INSERT INTO Cliente VALUES (6,'58441321783','J','Autoban Kars','ROD','RUA','', 'Centro',4,'RJ','BR','12548963','96895471','Bob Osama bin-Alan','','','','Devendo Dinheiro');
INSERT INTO Cliente VALUES (7,'54941651847','J','Zhe Mobilikaizer','ROD','', '','Centro',1,'PB','BR','63258974','36251478','Angel Merk','','78956','','');
INSERT INTO Cliente VALUES (8,'64979432168','F','Alfredo Jr.','PRA','', '','Mangue',1,'PB','BR','96587412','99565841','Valfredo Filho','','','','');
INSERT INTO Cliente VALUES (9,'42378673444','F','Kevin K. Garcia','ROD','BR-102','','Centro',1,'PB','BR','96587412','78945612','Willaim Bernardo','','','','');
INSERT INTO Cliente VALUES (10,'49651611695','J','Montadora do Zé','ROD','','','Centro',1,'PB','BR','65987312','96325147','Zé','','','suc@ta.com','');
INSERT INTO Cliente VALUES (11,'51687691127','J','Sucataria Novo Hamburgo','AVE','','','Torre',1,'PB','BR','96581243','55555555','Bolingo','','96383','','');
INSERT INTO Cliente VALUES (12,'4532896.434','J','Koka-Kola Distribuidora','AVE','','','Mangabeira',1,'PB','BR','65234178','12789654','Kornell Boris','','','','');
INSERT INTO Cliente VALUES (13,'45456789765','F','Ariel Alves','ROD','','','Torre',1,'PB','BR','96325416','99999995','Gabriel Flaig','','','','');
INSERT INTO Cliente VALUES (14,'78671456456','F','A. L. André','ROD','BR-230','','Timbó',1,'PB','BR','99996587','56457889','Andrei Ankovitch','','6666','','');
INSERT INTO Cliente VALUES (15,'78655556564','F','Murilo B. Malravelinsky','AVE','','','Centro',1,'PB','BR','32654178','22357742','Senhora Malravelinsky','','','','');
INSERT INTO Cliente VALUES (16,'12356789564','F','Tereza T. Rezinha','ROD','','','Centro',1,'PB','BR','99999987','69584714','Lori', '','','','');
INSERT INTO Cliente VALUES (17,'12356784563','J','FIB Auto Montadora','ROD','','','Mangue',1,'PB','BR','66655598','69596969','Donald Vlad','','','','');
INSERT INTO Cliente VALUES (18,'45645647878','J','AUTOCAR Peças','AVE','','Pavilhão 27','Bancários',1,'PB','BR',    '12345678','26154859','Marcos T. Opper','','','','');
INSERT INTO Cliente VALUES (19,'45678656456','F','Hellen Castro P.','AVE','','','Geisel',1,'PB','BR','98453716','59621547','Oscar Alho','','123778','','');
INSERT INTO Cliente VALUES (20,'54678978978','F','Veruska T. Rump','AVE','','Torre 2','Torre',1,'PB','BR','98453216','96362519','Obongo bin-Tupi','','763783','','Não confiável');

/*Setores*/
INSERT INTO Setor VALUES(1,'Setor Administrativo','ADM','100',NULL,1);
INSERT INTO Setor VALUES(2,'Setor de Vendas','VDS','200',1,3);
INSERT INTO Setor VALUES(3,'Setor de Recursos Humanos','RH','300',1,4);
INSERT INTO Setor VALUES(4,'Setor Financeiro','FIN','400',2,6);
INSERT INTO Setor VALUES(5,'Setor Operacional','OPR','500',1,5);

/*Funcionarios*/
INSERT INTO Funcionario VALUES (1,'Bruce Greene','M',1,'0045','S','1989-04-19 13:08:22','9488103','US',1,'76543234924','B','-','RUA','Rua Antonio Freitas, 450','Casa','Bancários',1,'PB','56038200','988420106',10,'2014-04-19 13:08:22','bruce@funhaus.com','5000');
INSERT INTO Funcionario VALUES(2,'Kamilly Bárbara Sophia','F',1,'0050','S', '1987-02-01 12:00:00','465428204' ,'BR',1,'07199085400','O','-','RUA','Rua Maria de Lourdes,100','Casa', 'Mangabeira','1','PB','58059751','987737610',1,'2015-02-05 12:00:00','kamillysophiamendes-70@delboux.com.br','500'); /* vendedora*/
INSERT INTO Funcionario VALUES(3,'Joana Rayssa Freitas','F',2,'0051','S', '1965-12-02 08:00:00','231452019','BR',1,'04882204401','B','-','PRA','Praça São Pedro Gonçalves,78','Casa', 'Varadouro','10','DF','58010590','995586948',10,'2017-02-01 14:00:00','joanarayssa@inforgel.com','1500'); /*CEO*/
INSERT INTO Funcionario VALUES(4,'Diego Hugo Moura','M',3,'0030','S','1993-03-14 09:00:00','177843494','BR',1,'80804380481','O','+','RUA','Rua Carteiro Francisco,50','Casa', 'Alto do Mateus','1','PB','58090570','992106112','1','2017-05-20 14:30:00','diegohugomoura-91@roche.com','3000'); /*vendedor*/
INSERT INTO Funcionario VALUES(5,'Arthur Benício Rodrigo Gomes','M',5,'0025','S','1991-09-25 07:30:00','234906297','BR',1,'39921.09436','AB','+','RUA','Rua José Alves de Macedo,780','Casa', 'Valentina','1','PB','58064120','992106112','2','2016-05-20 14:30:00','diegohugomoura-91@roche.com','3000'); /*Empacotador*/
INSERT INTO Funcionario VALUES(6,'Eduardo Ricardo Moura','M',4,'0020','S','1977-08-22 15:30:00','165463132','BR',1,'83455189407','A','+','RUA','Rua Gustavo Torres,267','Casa', 'Pedro Gondim','13','PE','58031144','981437148',3,'2016-06-16 15:30:00','eduardoricardomoura@badu.br','3500'); /*montador*/
INSERT INTO Funcionario VALUES(7,'David Simon Kastle Silva','M',1,'0021','S','1997-04-09 08:30:00','16645815','BR',1,'82990870407','AB','-','RUA','Rua General Alfredo,49','Casa', 'Banqueiros','12','MA','58051120','986050868',6,'2015-06-16 15:30:00','davidboladao@nani.jp','10000'); /*faxineiro*/
INSERT INTO Funcionario VALUES(8,'Antonio Vinicius Cavalcante','M',1,'0019','S','1997-07-09 06:30:00','425078796','BR',1,'04404273479','A','-','RUA','Largo do Mercado,98','Casa', 'Jaguaribe','1','PB','58015703','993747179',7,'2015-06-17 15:30:00','av1n1ciu5@nani.jp','950'); /*engenheiro*/

/*Pedidos*/
INSERT INTO Pedido VALUES(1,18,'2017-01-03 08:10:07',350,'T',2);
INSERT INTO Pedido VALUES(2,1,'2017-02-05 09:34:00',200,'A',2); 
INSERT INTO Pedido VALUES(3,3,'2017-03-07 18:21:00',100,'P',2);
INSERT INTO Pedido VALUES(4,4,'2016-04-10 12:54:00',210,'T',2);

/*Itens_Pedidos*/
INSERT INTO Itens_Pedido VALUES(1,4,'1',150,'T');
INSERT INTO Itens_Pedido VALUES(1,6,'1',200,'T');
INSERT INTO Itens_Pedido VALUES(2,1,'1',200,'A');
INSERT INTO Itens_Pedido VALUES(3,12,'2',50,'P');
INSERT INTO Itens_Pedido VALUES(4,7,'2',105,'T');

/* Respostas das questões ímpares*/

/* Questão 1 */
SELECT * FROM Funcionario;
SELECT * FROM UF;
SELECT * FROM Pais;
SELECT * FROM Cidade;
SELECT * FROM Funcao;
SELECT * FROM Tipo_Produto;
SELECT * FROM Produto;
SELECT * FROM Cliente;
SELECT * FROM Pedido;
SELECT * FROM Itens_Pedido;
SELECT * FROM Setor;

/* Questão 3 */
SELECT Cidade FROM Cliente;
SELECT DISTINCT Cidade FROM Cliente;

/* Questão 5 */
SELECT *,  1.35 * Venda  AS Aumento FROM Produto;

/* Questão 7 */
SELECT Setor, Nome FROM Funcionario
    WHERE Cidade = 12 OR Cidade = 13;

/* Questão 9 */
SELECT Sigla, nome FROM UF
    WHERE Pais != 'BR'
    ORDER BY Sigla ASC, nome ASC;

/* QUestão 11 */
SELECT Nome, Salario, Salario * 1.20 AS Aumento 
FROM Funcionario
    WHERE Setor != 10 AND Sexo = 'F';

/* Questão 13 */
SELECT Nome AS Produtos_abaixo_de_100 FROM Produto
    WHERE Custo < 100;

/* Questão 15 */
SELECT Nome FROM Funcionario
    WHERE Sexo = "M" AND YEAR(admissao) = YEAR(UTC_DATE()) 
        AND Nome NOT LIKE 'a%'
        AND Nome NOT LIKE 'b%'
        AND Nome NOT LIKE 'c%';

/* Questão 17 */
SELECT Nome, Venda FROM Produto
    WHERE Nome LIKE "%FREIO%";

/* Questão 19 */
SELECT Contato, Email FROM Cliente
    WHERE Email != '';

/* Questão 21 */
SELECT * FROM Funcionario
    WHERE DATE(data_nascimento) >= '1965-12-01' AND DATE(data_nascimento) <= '1966-02-28'
    AND Cidade = 10;

/* Questão 23 */
SELECT SUM(Salario) AS FolhadePagamento
    FROM Funcionario;

/* Questão 25 */
SELECT AVG(Salario) AS Media_de_Salario_do_Setor_8
    FROM Funcionario
    WHERE Setor = 8;

/* Questão 27 */
SELECT AVG((YEAR(NOW()) - YEAR(data_nascimento)))
    AS Media_de_Idade_dos_Funcionarios_homens_com_Funcao_2
    FROM Funcionario 
    WHERE Sexo = "M" AND Funcao = 2;

/* Questão 29 */
SELECT MIN(admissao) AS data_admissao_func_mais_antigo FROM Funcionario;

/* Questão 31 */
SELECT COUNT(ramal_individual) as Numero_funcionarios_com_ramal_individual FROM Funcionario
    WHERE ramal_individual IS NOT NULL;

/* Questão 33 */
SELECT MAX(Venda) AS Preço_produto_mais_caro FROM Produto;

/* Questão 35 */
SELECT MAX(data_Pedido) AS Data_pedido_mais_recente FROM Pedido;

/* Questão 37 */
SELECT SUM(Salario) AS Folha_de_pagamento FROM Funcionario
    GROUP BY Setor;

/* Questão 39 */
SELECT AVG(Venda), AVG(estoque_real) FROM Produto
    GROUP BY Tipo;

/* Questão 41 */
SELECT SUM(Quant), AVG(Total), AVG(Quant), Produto FROM Itens_Pedido
    GROUP BY Produto;

/* Questão 43 */
SELECT SUM(Total), Cliente FROM Pedido
    WHERE YEAR(data_pedido) = ( YEAR(NOW()) - 1 )
    GROUP BY Cliente;

/* Questão 45 */
SELECT COUNT(Codigo), Setor, Sexo
    FROM Funcionario
    GROUP BY Setor, Sexo;

/* Questão 47 */
SELECT COUNT(Sexo),naturalidade,Sexo from Funcionario 
    GROUP BY Sexo,naturalidade;

/* Questão 49 */
SELECT COUNT(Codigo),Uf,Pais from Cidade 
GROUP BY Pais,Uf;

/* Questão 51 */
SELECT COUNT(*), Cidade, Sexo FROM Funcionario
    GROUP BY Cidade, Sexo;

/* Questão 53 */
SELECT Funcionario.Nome AS Funcionario, Setor.Nome AS Setor FROM Funcionario
    INNER JOIN Setor ON
    Funcionario.Setor = Setor.Codigo;

/* Questão 55 */
SELECT razao_social AS Cliente, Cidade.Nome FROM Cliente
    INNER JOIN Cidade ON
    Cliente.Cidade = Cidade.Codigo;

/* Questão 57 */
SELECT Produto.codigo,Produto.Venda,Produto.estoque_real,Produto.Tipo,Tipo_Produto.Nome AS Nome_Tipo FROM Produto
 INNER JOIN Tipo_Produto on Produto.Tipo=Tipo_Produto.codigo;

/* Questão 59 */
SELECT SUM(Salario) AS Soma_dos_Salários, Setor.Nome, Funcionario.Setor 
    FROM Funcionario
    INNER JOIN Setor ON
    Funcionario.Setor = Setor.Codigo
    GROUP BY Setor;

/* Questão 61 */
SELECT inf.Nome , sup.Nome
    FROM Setor AS inf
    INNER JOIN Setor AS sup ON
    inf.superior = sup.codigo;

/* Questão 63 */
SELECT  Pedido.Codigo,Cliente.razao_social,Pedido.situacao FROM Pedido 
    INNER JOIN Cliente ON 
    Pedido.Cliente=Cliente.codigo WHERE Pedido.situacao != 'T';

/* Questão 65 */
SELECT Cliente.*,Pais.nome 
    FROM Cliente 
    INNER JOIN Pais ON 
    Cliente.Pais=Pais.sigla;

/* Questão 67 */
SELECT Funcionario.Nome,sum(Pedido.Total) FROM Funcionario 
    INNER JOIN Pedido ON
    Funcionario.codigo=Pedido.vendedor 
    GROUP BY Funcionario.codigo 
    ORDER BY SUM(Pedido.Total) ASC;

/* Questão 69 */
SELECT Produto.Nome,Produto.estoque_real,Produto.unidade 
    FROM Produto 
    INNER JOIN Itens_Pedido ON 
    Produto.codigo=Itens_Pedido.Produto 
    INNER JOIN Pedido ON 
    Pedido.codigo=Itens_Pedido.Pedido 
    WHERE YEAR(Pedido.data_pedido)=2016 
    ORDER BY Produto.estoque_real ASC;


/* Questão 71 */
SELECT Pedido.codigo,Cliente.razao_social,Pedido.situacao 
    FROM Pedido 
    INNER JOIN Cliente ON 
    Pedido.Cliente=Cliente.codigo WHERE Cliente.Pais IN(select Sigla FROM Pais WHERE Sigla != "BR");

/* Questão 73 */
SELECT Produto.Nome,sum(Itens_Pedido.Total) AS Total,SUM(Itens_Pedido.Total)/(SELECT SUM(IP.Total) FROM Itens_Pedido AS IP) AS Porcentagem
    FROM Produto INNER JOIN Itens_Pedido ON 
    Produto.codigo=Itens_Pedido.Produto 
    INNER JOIN Pedido P ON
    P.codigo=Itens_Pedido.Pedido 
    WHERE YEAR(P.data_pedido)=2017 GROUP BY Produto.codigo order BY Porcentagem DESC;

/* Questão 73 */
SELECT Produto.Nome,sum(Itens_Pedido.Total) AS Total,SUM(Itens_Pedido.Total)/(SELECT SUM(IP.Total) FROM Itens_Pedido AS IP) AS Porcentagem
    FROM Produto INNER JOIN Itens_Pedido ON 
    Produto.codigo=Itens_Pedido.Produto 
    INNER JOIN Pedido P ON
    P.codigo=Itens_Pedido.Pedido 
    WHERE YEAR(P.data_pedido)=2017 GROUP BY Produto.codigo order BY Porcentagem DESC;

/* Questão 75 */
SELECT (select count(*) FROM Funcionario F WHERE F.Setor=Setor.codigo) AS TotalFuncionario,Setor.Nome,(SELECT count(*) 
    FROM Funcionario F WHERE F.Setor=Setor.codigo)/(select count(*) FROM Funcionario F) AS ParticipacaoMontante 
    FROM Funcionario INNER JOIN Setor ON Funcionario.Setor=Setor.codigo 
    GROUP BY Funcionario.Setor;

/* Questão 77 */
SELECT (SELECT SUM(Salario+Funcao.Salario) FROM Funcionario WHERE Funcionario.Funcao=Funcao.codigo) AS Pagamento,Funcao.codigo AS CodFuncao,(SELECT SUM(Salario+Funcao.Salario) 
    FROM Funcionario WHERE Funcionario.Funcao=Funcao.codigo)/(SELECT SUM(Salario+Funcao.Salario) FROM Funcionario) AS Porcentagem 
    FROM Funcao 
    GROUP BY Funcao.codigo;

/* Questão 79 */
SELECT Funcao.Nome,Funcao.Salario 
    FROM Funcao WHERE Funcao.Salario=(SELECT MAX(Func.Salario) 
    FROM Funcionario Func);

/* Questão 81*/
SELECT AVG(YEAR(NOW()) - YEAR(data_nascimento)) FROM Funcionario
    INNER JOIN Funcao ON
    Funcionario.Funcao = Funcao.Codigo
    WHERE Funcao.Salario = (SELECT MAX(Salario) FROM Funcao);

/* Questão 83*/
SELECT Nome AS Funcionario_mais_antigo_da_empresa FROM Funcionario
    WHERE admissao = (SELECT MIN(admissao) FROM Funcionario);

/* Questão 85*/
SELECT COUNT(Codigo) AS Func_com_ramal_individual FROM Funcionario
    WHERE ramal_individual != '';

/* Questão 87*/
SELECT Cliente.razao_social AS Cliente, SUM(Total) AS Total_de_Compras, ( SUM(Total) / (SELECT SUM(Total) FROM Pedido))*100 AS Pocentagem_do_total FROM Pedido
    INNER JOIN Cliente ON
    Pedido.Cliente = Cliente.Codigo
    GROUP BY Cliente
    ORDER BY Total_de_Compras DESC;

/* Questão 93 */
INSERT INTO Pais (sigla,nome) VALUES ('AU','Australia');
INSERT INTO UF (Sigla,pais,nome) VALUES ('GB','AU','Gibson');
INSERT INTO UF (Sigla,pais,nome) VALUES ('VI','AU','Vitoria');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('GB','AU','Sidney');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('GB','AU','Melbourne');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('VI','AU','Albany');
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('VI','AU','Adelaide');
SELECT * FROM Cidade
    WHERE Pais = 'AU'
    AND (Uf = 'GB' OR UF = 'VI');

/* Questão 95 */
UPDATE Cliente
    SET Cidade = (SELECT MAX(Codigo) FROM Cidade)
    WHERE razao_social LIKE '%MOVEIS%';
SELECT * FROM Cliente
    WHERE Cidade = (SELECT MAX(Codigo) FROM Cidade)
    AND razao_social LIKE '%MOVEIS%';