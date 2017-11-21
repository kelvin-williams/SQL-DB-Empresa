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
INSERT INTO Cidade (Uf,Pais,Nome) VALUES ('MB','BR','Belo Horizonte');
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
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES (,'Vendedor','500');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES ('','Empacotador','500');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES ('','Montador','600');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES ('','Gerente','2000');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES ('','Mecânico','800');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES ('','Faxineiro','500');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES ('','Engenheiro','1000');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES ('','Secretario','900');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES ('','Designer','1000');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES ('','CEO','10000');

/*Tipo_Produto*/
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES ('','Pastilha de Freio');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES ('','Amortecedor');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES ('','Filtros');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES ('','Som');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES ('','Pneu e Roda');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES ('','Acessórios');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES ('','Volante');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES ('','Cano de Escape');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES ('','Motor');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES ('','Roda');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES ('','Farol');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES ('','Carburador');

/*Produto
https://www.tudopracarro.com.br/lista-de-pecas <- Link com nome de peças de carro
(Codigo,Nome,Tipo,Unidade,estoque_real,estoque_virtual,estoque_minimo,Custo,Venda)*/
INSERT INTO Produto VALUES ('','Pastilha de Freio',1,'QTD',20,'','',70,200);
INSERT INTO Produto VALUES ('','Amortecedor dianteiro',2,'QNT',90,85,80,200,400);
INSERT INTO Produto VALUES ('','Bandeija de suspensão',2,'QNT',50,40,30,250,300);
INSERT INTO Produto VALUES ('','Filtro da cabine',3,'QNT',60,50,40,150,200);
INSERT INTO Produto VALUES ('','Filtro de óleo',3,'QNT',80,80,50,175,310);
INSERT INTO Produto VALUES ('','Purificador de ar',3,'QNT',120,117,115,65,150);
INSERT INTO Produto VALUES ('','Alto-Falante',4,'QNT',94,90,35,45,105);
INSERT INTO Produto VALUES ('','Cilindro da roda',5,'QNT',115,111,100,130,215);
INSERT INTO Produto VALUES ('','Pneu aro 14',5,'QNT',340,230,200,140,220);
INSERT INTO Produto VALUES ('','Adesivo refletor',6,'QNT',60,59,50,15,40);
INSERT INTO Produto VALUES ('','Adesivo de coluna',6,'QNT',50,49,35,22,46);
INSERT INTO Produto VALUES ('','Buzina',6,'QNT',150,145,132,10,25);
INSERT INTO Produto VALUES ('','Kit vidro elétrico',6,'QNT',70,50,45,170,285);
INSERT INTO Produto VALUES ('','Tapete do túnel',6,'QNT',175,143,122,24,56);

/*Cliente
Cliente (Codigo,cgc_cpf,Tipo,razao_social,tipo_logradouro,Logradouro,Complemento,Bairro,Cidade,Uf,Pais,Cep,Fone,Contato,Fax,insc_est,Email, Obs)*/
INSERT INTO Cliente VALUES ('','54131462177','F','Ednaldo Pereira','PRA','Praça Pereira', 'Prédio Manhole','Centro','1','PB','BR','75412365','789(555)96157666','Pereira Ednaldo','','35772','ednaldo.chance@yahoo.com.br','Ednaldo Pereira');
INSERT INTO Cliente VALUES ('','84941777411','F','Junji Ito', 'AVE','RUA', 'Casa','Centro','1','PB','BR','78459632','789(555)89564666','Oti Ijnuj','','343271', '','');
INSERT INTO Cliente VALUES ('','33625417756','F','Rodrigo A. Derlan','AVE','RUA','Casa','Centro','1','PB','BR','78456932','789(555)96158569','Rodrigo ADE','','46575','rodrigo.cervejao@ade.gov','Não fecha negócio com Milone');
INSERT INTO Cliente VALUES ('','78546314824','F','Miguel T. Mercator','AVE','RUA','Casa','Bancários','2','','','78123546','789(222)98745123','Michel Teme','','','','');
INSERT INTO Cliente VALUES ('','16846515256','J','Zurich Motors','ROD','BR-101','Predio','Centro','3','','','96325874','789(222)99957666','Kratos','','','','');
INSERT INTO Cliente VALUES ('','58441321783','J','Autoban Kars','ROD','RUA','', 'Centro','4','','','12548963','789(555)96895471','Bob Osama bin-Alan','','','','Devendo Dinheiro');
INSERT INTO Cliente VALUES ('','54941651847','J','Zhe Mobilikaizer','ROD','', '','Centro','1','PB','BR','63258974','789(555)36251478','Angel Merk','','78956','','');
INSERT INTO Cliente VALUES ('','64979432168','F','Alfredo Jr.','PRA','', '','Mangue','1','','','96587412','789(222)99565841','Valfredo Filho','','','','');
INSERT INTO Cliente VALUES ('','42378673444','F','Kevin K. Garcia','ROD','BR-102','','Centro','1','','','96587412','789(555)78945612','Willaim Bernardo','','','','');
INSERT INTO Cliente VALUES ('','49651611695','J','Montadora do Zé','ROD','','','Centro','7','','','65987312','789(666)96325147','Zé','','','suc@ta.com','');
INSERT INTO Cliente VALUES ('','51687691127','J','Sucataria Novo Hamburgo','AVE','','','Torre','1','PB','BR','96581243','789(555)55555555','Bolingo','','96383','','');
INSERT INTO Cliente VALUES ('','4532896.434','J','Koka-Kola Distribuidora','AVE','''','Mangabeira','2','','','65234178','789(555)12789654','Kornell Boris','','','','');
INSERT INTO Cliente VALUES ('','45456789765','F','Ariel Alves','ROD','','','Torre','1','','','96325416','789(666)99999995','Gabriel Flaig','','','','');
INSERT INTO Cliente VALUES ('','78671456456','F','A. L. André','ROD','BR-230','','Timbó','1','','BR','99996587','789(555)56457889','Andrei Ankovitch','','6666','','');
INSERT INTO Cliente VALUES ('','78655556564','F','Murilo B. Malravelinsky','AVE','','','Centro','2','','','32654178','789(555)22357742','Senhora Malravelinsky','','','','');
INSERT INTO Cliente VALUES ('','12356789564','F','Tereza T. Rezinha','ROD','','','Centro','7','','','99999987','789(555)69584714','Lori', '','','','');
INSERT INTO Cliente VALUES ('','12356784563','J','FIB Auto Montadora','ROD','','','Mangue','2','','','66655598','789(111)69596969','Donald Vlad','','','','');
INSERT INTO Cliente VALUES ('','45645647878','J','AUTOCAR Peças','AVE','','Pavilhão 27','Bancários','1','','',    '12345678','789(555)26154859','Marcos T. Opper','','','','');
INSERT INTO Cliente VALUES ('','45678656456','F','Hellen Castro P.','AVE','','','Geisel','1','PB','BR','98453716','789(666)59621547','Oscar Alho','','123778','','');
INSERT INTO Cliente VALUES ('','54678978978','F','Veruska T. Rump','AVE','','Torre 2','Torre','1','PB','BR','98453216','789(555)96362519','Obongo bin-Tupi','','763783','','Não confiável');

/*Clientes de David*/
INSERT INTO Cliente VALUES ('','41579614809','F','Samuel Antonio Gomes','RUA','Rua Deputado Balduíno Minervino de Carvalho, 610', 'Casa','Aeroclube','1','PB','BR','58036860','8336180750','Samuel Gomes','','35772','samueljoantoniogomes_@autvale.com','');

/*Setores
--Setor(Codigo,Nome,Sigla,Ramal,superior,responsavel)*/
INSERT INTO Setor VALUES('','Setor Administrativo','ADM','100','','');
INSERT INTO Setor VALUES('','Setor de Vendas','VDS','200',1,'');
INSERT INTO Setor VALUES('','Setor de Recursos Humanos','RH','300',1,'');
INSERT INTO Setor VALUES('','Setor Financeiro','FIN','400',2,'');
INSERT INTO Setor VALUES('','Setor Operacional','OPR','500',1,'');

/*Funcionarios
--Funcionario(Codigo,Nome,Sexo,Setor,ramal_individual,estado_civil,data_nascimento,rg_numero,nacionalidade,naturalidade,Cpf,sangue_fator,sangue_rh,tipo_logradouro,logradouro,complemento,Bairro,Cidade,Uf,Cep,Fone,Funcao,admissao,Email,Salario)*/
INSERT INTO Funcionario VALUES ('','Bruce Greene','M',1,'0045','S','1989-04-19 13:08:22','9488103','US',1,'76543234924','B','-','RUA','Rua Antonio Freitas, 450','Casa','Bancários',1,'PB','56038200','988420106',10,'2014-04-19 13:08:22','bruce@funhaus.com','5000');