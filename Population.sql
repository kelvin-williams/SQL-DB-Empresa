--Países
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

--UF's
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

--Cidades
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

--Funcao
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES ('','','');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES ('','','');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES ('','','');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES ('','','');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES ('','','');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES ('','','');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES ('','','');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES ('','','');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES ('','','');
INSERT INTO Funcao (Codigo,Nome,Salario) VALUES ('','','');

--Tipo_Produto
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES ('','');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES ('','');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES ('','');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES ('','');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES ('','');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES ('','');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES ('','');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES ('','');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES ('','');
INSERT INTO Tipo_Produto (Codigo,Nome) VALUES ('','');

--Produto
INSERT INTO Produto (Codigo,Nome,Tipo,Unidade,estoque_real,estoque_virtual,estoque_minimo,Custo,Venda) VALUES ('','');
INSERT INTO Produto (Codigo,Nome,Tipo,Unidade,estoque_real,estoque_virtual,estoque_minimo,Custo,Venda) VALUES ('','');
INSERT INTO Produto (Codigo,Nome,Tipo,Unidade,estoque_real,estoque_virtual,estoque_minimo,Custo,Venda) VALUES ('','');
INSERT INTO Produto (Codigo,Nome,Tipo,Unidade,estoque_real,estoque_virtual,estoque_minimo,Custo,Venda) VALUES ('','');
INSERT INTO Produto (Codigo,Nome,Tipo,Unidade,estoque_real,estoque_virtual,estoque_minimo,Custo,Venda) VALUES ('','');
INSERT INTO Produto (Codigo,Nome,Tipo,Unidade,estoque_real,estoque_virtual,estoque_minimo,Custo,Venda) VALUES ('','');
INSERT INTO Produto (Codigo,Nome,Tipo,Unidade,estoque_real,estoque_virtual,estoque_minimo,Custo,Venda) VALUES ('','');
INSERT INTO Produto (Codigo,Nome,Tipo,Unidade,estoque_real,estoque_virtual,estoque_minimo,Custo,Venda) VALUES ('','');
INSERT INTO Produto (Codigo,Nome,Tipo,Unidade,estoque_real,estoque_virtual,estoque_minimo,Custo,Venda) VALUES ('','');
INSERT INTO Produto (Codigo,Nome,Tipo,Unidade,estoque_real,estoque_virtual,estoque_minimo,Custo,Venda) VALUES ('','');
INSERT INTO Produto (Codigo,Nome,Tipo,Unidade,estoque_real,estoque_virtual,estoque_minimo,Custo,Venda) VALUES ('','');
INSERT INTO Produto (Codigo,Nome,Tipo,Unidade,estoque_real,estoque_virtual,estoque_minimo,Custo,Venda) VALUES ('','');
INSERT INTO Produto (Codigo,Nome,Tipo,Unidade,estoque_real,estoque_virtual,estoque_minimo,Custo,Venda) VALUES ('','');
INSERT INTO Produto (Codigo,Nome,Tipo,Unidade,estoque_real,estoque_virtual,estoque_minimo,Custo,Venda) VALUES ('','');
INSERT INTO Produto (Codigo,Nome,Tipo,Unidade,estoque_real,estoque_virtual,estoque_minimo,Custo,Venda) VALUES ('','');
INSERT INTO Produto (Codigo,Nome,Tipo,Unidade,estoque_real,estoque_virtual,estoque_minimo,Custo,Venda) VALUES ('','');
INSERT INTO Produto (Codigo,Nome,Tipo,Unidade,estoque_real,estoque_virtual,estoque_minimo,Custo,Venda) VALUES ('','');
INSERT INTO Produto (Codigo,Nome,Tipo,Unidade,estoque_real,estoque_virtual,estoque_minimo,Custo,Venda) VALUES ('','');
INSERT INTO Produto (Codigo,Nome,Tipo,Unidade,estoque_real,estoque_virtual,estoque_minimo,Custo,Venda) VALUES ('','');
INSERT INTO Produto (Codigo,Nome,Tipo,Unidade,estoque_real,estoque_virtual,estoque_minimo,Custo,Venda) VALUES ('','');

--Cliente
INSERT INTO Cliente (Codigo,cgc_cpf,Tipo,razao_social,tipo_logradouro,Logradouro,Complemento,Bairro,Cidade,Uf,Pais,Cep,Fone,Contato,Fax,insc_est,Email) VALUES ('','');
INSERT INTO Cliente (Codigo,cgc_cpf,Tipo,razao_social,tipo_logradouro,Logradouro,Complemento,Bairro,Cidade,Uf,Pais,Cep,Fone,Contato,Fax,insc_est,Email) VALUES ('','');
INSERT INTO Cliente (Codigo,cgc_cpf,Tipo,razao_social,tipo_logradouro,Logradouro,Complemento,Bairro,Cidade,Uf,Pais,Cep,Fone,Contato,Fax,insc_est,Email) VALUES ('','');
INSERT INTO Cliente (Codigo,cgc_cpf,Tipo,razao_social,tipo_logradouro,Logradouro,Complemento,Bairro,Cidade,Uf,Pais,Cep,Fone,Contato,Fax,insc_est,Email) VALUES ('','');
INSERT INTO Cliente (Codigo,cgc_cpf,Tipo,razao_social,tipo_logradouro,Logradouro,Complemento,Bairro,Cidade,Uf,Pais,Cep,Fone,Contato,Fax,insc_est,Email) VALUES ('','');
INSERT INTO Cliente (Codigo,cgc_cpf,Tipo,razao_social,tipo_logradouro,Logradouro,Complemento,Bairro,Cidade,Uf,Pais,Cep,Fone,Contato,Fax,insc_est,Email) VALUES ('','');
INSERT INTO Cliente (Codigo,cgc_cpf,Tipo,razao_social,tipo_logradouro,Logradouro,Complemento,Bairro,Cidade,Uf,Pais,Cep,Fone,Contato,Fax,insc_est,Email) VALUES ('','');
INSERT INTO Cliente (Codigo,cgc_cpf,Tipo,razao_social,tipo_logradouro,Logradouro,Complemento,Bairro,Cidade,Uf,Pais,Cep,Fone,Contato,Fax,insc_est,Email) VALUES ('','');
INSERT INTO Cliente (Codigo,cgc_cpf,Tipo,razao_social,tipo_logradouro,Logradouro,Complemento,Bairro,Cidade,Uf,Pais,Cep,Fone,Contato,Fax,insc_est,Email) VALUES ('','');
INSERT INTO Cliente (Codigo,cgc_cpf,Tipo,razao_social,tipo_logradouro,Logradouro,Complemento,Bairro,Cidade,Uf,Pais,Cep,Fone,Contato,Fax,insc_est,Email) VALUES ('','');
INSERT INTO Cliente (Codigo,cgc_cpf,Tipo,razao_social,tipo_logradouro,Logradouro,Complemento,Bairro,Cidade,Uf,Pais,Cep,Fone,Contato,Fax,insc_est,Email) VALUES ('','');
INSERT INTO Cliente (Codigo,cgc_cpf,Tipo,razao_social,tipo_logradouro,Logradouro,Complemento,Bairro,Cidade,Uf,Pais,Cep,Fone,Contato,Fax,insc_est,Email) VALUES ('','');
INSERT INTO Cliente (Codigo,cgc_cpf,Tipo,razao_social,tipo_logradouro,Logradouro,Complemento,Bairro,Cidade,Uf,Pais,Cep,Fone,Contato,Fax,insc_est,Email) VALUES ('','');
INSERT INTO Cliente (Codigo,cgc_cpf,Tipo,razao_social,tipo_logradouro,Logradouro,Complemento,Bairro,Cidade,Uf,Pais,Cep,Fone,Contato,Fax,insc_est,Email) VALUES ('','');
INSERT INTO Cliente (Codigo,cgc_cpf,Tipo,razao_social,tipo_logradouro,Logradouro,Complemento,Bairro,Cidade,Uf,Pais,Cep,Fone,Contato,Fax,insc_est,Email) VALUES ('','');
INSERT INTO Cliente (Codigo,cgc_cpf,Tipo,razao_social,tipo_logradouro,Logradouro,Complemento,Bairro,Cidade,Uf,Pais,Cep,Fone,Contato,Fax,insc_est,Email) VALUES ('','');
INSERT INTO Cliente (Codigo,cgc_cpf,Tipo,razao_social,tipo_logradouro,Logradouro,Complemento,Bairro,Cidade,Uf,Pais,Cep,Fone,Contato,Fax,insc_est,Email) VALUES ('','');
INSERT INTO Cliente (Codigo,cgc_cpf,Tipo,razao_social,tipo_logradouro,Logradouro,Complemento,Bairro,Cidade,Uf,Pais,Cep,Fone,Contato,Fax,insc_est,Email) VALUES ('','');
INSERT INTO Cliente (Codigo,cgc_cpf,Tipo,razao_social,tipo_logradouro,Logradouro,Complemento,Bairro,Cidade,Uf,Pais,Cep,Fone,Contato,Fax,insc_est,Email) VALUES ('','');
INSERT INTO Cliente (Codigo,cgc_cpf,Tipo,razao_social,tipo_logradouro,Logradouro,Complemento,Bairro,Cidade,Uf,Pais,Cep,Fone,Contato,Fax,insc_est,Email) VALUES ('','');
