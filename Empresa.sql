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
