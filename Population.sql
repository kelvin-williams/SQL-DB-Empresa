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

/*Produto
https://www.tudopracarro.com.br/lista-de-pecas <- Link com nome de peças de carro
(Codigo,Nome,Tipo,Unidade,estoque_real,estoque_virtual,estoque_minimo,Custo,Venda)*/
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

/*Cliente
Cliente (Codigo,cgc_cpf,Tipo,razao_social,tipo_logradouro,Logradouro,Complemento,Bairro,Cidade,Uf,Pais,Cep,Fone,Contato,Fax,insc_est,Email, Obs)*/
INSERT INTO Cliente VALUES (1,'54131462177','F','Ednaldo Pereira','PRA','Praça Pereira', 'Prédio Manhole','Centro',1,'PB','BR','75412365','96157666','Pereira Ednaldo','','35772','ednaldo.chance@yahoo.com.br','Ednaldo Pereira');
INSERT INTO Cliente VALUES (2,'84941777411','F','Junji Ito', 'AVE','RUA', 'Casa','Centro',1,'PB','BR','78459632','89564666','Oti Ijnuj','','343271', '','');
INSERT INTO Cliente VALUES (3,'33625417756','F','Rodrigo A. Derlan','AVE','RUA','Casa','Centro',1,'PB','BR','78456932','96158569','Rodrigo ADE','','46575','rodrigo.cervejao@ade.gov','Não fecha negócio com Milone');
INSERT INTO Cliente VALUES (4,'78546314824','F','Miguel T. Mercator','AVE','RUA','Casa','Bancários',1,'PB','BR','78123546','98745123','Michel Teme','','','','');
INSERT INTO Cliente VALUES (5,'16846515256','J','Zurich Motors','ROD','BR-101','Predio','Centro',3,'MG','BR','96325874','99957666','Kratos','','','','');
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

/*Clientes de David*/
INSERT INTO Cliente VALUES (21,'41579614809','F','Samuel Antonio Gomes','RUA','Rua Deputado Balduíno, 610', 'Casa','Aeroclube',1,'PB','BR','58036860','8336180750','Samuel Gomes','','35772','samueljoantoniogomes_@autvale.com','');

/*Setores
Setor(Codigo,Nome,Sigla,Ramal,superior,responsavel)*/
INSERT INTO Setor VALUES(1,'Setor Administrativo','ADM','100',NULL,1);
INSERT INTO Setor VALUES(2,'Setor de Vendas','VDS','200',1,3);
INSERT INTO Setor VALUES(3,'Setor de Recursos Humanos','RH','300',1,4);
INSERT INTO Setor VALUES(4,'Setor Financeiro','FIN','400',2,6);
INSERT INTO Setor VALUES(5,'Setor Operacional','OPR','500',1,5);

/*Funcionarios
Funcionario(Codigo,Nome,Sexo,Setor,ramal_individual,estado_civil,data_nascimento,rg_numero,nacionalidade,naturalidade,Cpf,sangue_fator,sangue_rh,tipo_logradouro,logradouro,complemento,Bairro,Cidade,Uf,Cep,Fone,Funcao,admissao,Email,Salario)*/
INSERT INTO Funcionario VALUES (1,'Bruce Greene','M',1,'0045','S','1989-04-19 13:08:22','9488103','US',1,'76543234924','B','-','RUA','Rua Antonio Freitas, 450','Casa','Bancários',1,'PB','56038200','988420106',10,'2014-04-19 13:08:22','bruce@funhaus.com','5000');
INSERT INTO Funcionario VALUES(2,'Kamilly Bárbara Sophia','F',1,'0050','S', '1987-02-01 12:00:00','465428204' ,'BR',1,'07199085400','O','-','RUA','Rua Maria de Lourdes,100','Casa', 'Mangabeira','1','PB','58059751','987737610',1,'2015-02-05 12:00:00','kamillysophiamendes-70@delboux.com.br','500'); /* vendedora*/
INSERT INTO Funcionario VALUES(3,'Joana Rayssa Freitas','F',2,'0051','S', '1999-04-08 08:00:00','231452019','BR',1,'04882204401','B','-','PRA','Praça São Pedro Gonçalves,78','Casa', 'Varadouro','1','PB','58010590','995586948',10,'2017-02-01 14:00:00','joanarayssa@inforgel.com','1500'); /*CEO*/
INSERT INTO Funcionario VALUES(4,'Diego Hugo Moura','M',3,'0030','S','1993-03-14 09:00:00','177843494','BR',1,'80804380481','O','+','RUA','Rua Carteiro Francisco,50','Casa', 'Alto do Mateus','1','PB','58090570','992106112','1','2016-05-20 14:30:00','diegohugomoura-91@roche.com','3000'); /*vendedor*/
INSERT INTO Funcionario VALUES(5,'Arthur Benício Rodrigo Gomes','M',5,'0025','S','1991-09-25 07:30:00','234906297','BR',1,'39921.09436','AB','+','RUA','Rua José Alves de Macedo,780','Casa', 'Valentina','1','PB','58064120','992106112','2','2016-05-20 14:30:00','diegohugomoura-91@roche.com','3000'); /*Empacotador*/
INSERT INTO Funcionario VALUES(6,'Eduardo Ricardo Moura','M',4,'0020','S','1977-08-22 15:30:00','165463132','BR',1,'83455189407','A','+','RUA','Rua Gustavo Torres,267','Casa', 'Pedro Gondim','1','PB','58031144','981437148',3,'2016-06-16 15:30:00','eduardoricardomoura@badu.br','3500'); /*montador*/
INSERT INTO Funcionario VALUES(7,'David Simon Kastle Silva','M',1,'0021','S','1997-04-09 08:30:00','16645815','BR',1,'82990870407','AB','-','RUA','Rua General Alfredo,49','Casa', 'Bancários','1','PB','58051120','986050868',6,'2015-06-16 15:30:00','davidboladao@nani.jp','10000'); /*faxineiro*/
INSERT INTO Funcionario VALUES(8,'Antonio Vinicius Cavalcante','M',1,'0019','S','1997-07-09 06:30:00','425078796','BR',1,'04404273479','A','-','RUA','Largo do Mercado,98','Casa', 'Jaguaribe','1','PB','58015703','993747179',7,'2015-06-17 15:30:00','av1n1ciu5@nani.jp','950'); /*engenheiro*/

/*Pedidos
Pedidos(Código,cliente,data_pedido,total,situacao,vendedor) */

INSERT INTO Pedido VALUES(1,18,'2017-01-03 08:10:07',350,'T',2);
INSERT INTO Pedido VALUES(2,1,'2017-02-05 09:34:00',200,'A',2); 
INSERT INTO Pedido VALUES(3,3,'2017-03-07 18:21:00',100,'P',2);
INSERT INTO Pedido VALUES(4,4,'2017-04-10 12:54:00',210,'T',2);

/*Itens_Pedidos
Itens_Pedido,(Pedido, Produto, Quant, Total, situacao) */
INSERT INTO Itens_Pedido VALUES(1,4,'1',150,'T');
INSERT INTO Itens_Pedido VALUES(1,6,'1',200,'T');
INSERT INTO Itens_Pedido VALUES(2,1,'1',200,'A');
INSERT INTO Itens_Pedido VALUES(3,12,'2',50,'P');
INSERT INTO Itens_Pedido VALUES(4,7,'2',105,'T');

