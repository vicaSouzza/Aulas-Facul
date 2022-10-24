
CREATE DATABASE Imobiliaria;
USE Imobiliaria;


CREATE TABLE Categoria_imovel( 
cod_categoria INT PRIMARY KEY  AUTO_INCREMENT, 
categoria VARCHAR(20) NOT NULL
); 

CREATE TABLE Imoveis(
cod_imovel INT PRIMARY KEY  AUTO_INCREMENT,
foto VARCHAR (50) NOT NULL,
endereço VARCHAR (30) NOT NULL,
cidade VARCHAR (30) NOT NULL,
data_construcao DATE NOT NULL, 
bairro VARCHAR (30) NOT NULL,
valor DECIMAL (8,2) NOT NULL,
cod_categoriaFK INT NOT NULL,
FOREIGN KEY (cod_categoriaFK) REFERENCES Categoria_imovel(cod_categoria)
);
 
 CREATE TABLE Status_imovel( 
 cod_status INT PRIMARY KEY  AUTO_INCREMENT,
 status_imovel VARCHAR(15) NOT NULL,
 cod_imovelFK_statusImovel INT NOT NULL,
 FOREIGN KEY (cod_imovelFK_statusImovel) REFERENCES Imoveis(cod_imovel)
);
  
CREATE TABLE Info_Casa(
cod_casa INT PRIMARY KEY  AUTO_INCREMENT,
QTDQuartos INT NOT NULL,
QTDSuites  INT NOT NULL,
QTDSala_estar INT NOT NULL,
QTDSala_jantar INT NOT NULL,
QTDGaragem INT NOT NULL,
area_m2 INT NOT NULL,
armario_embutido VARCHAR(10) NOT NULL,
descricao VARCHAR(50) NOT NULL,
cod_imovelFK_casa INT NOT NULL,
FOREIGN KEY (cod_imovelFK_casa) REFERENCES Imoveis(cod_imovel)
);
  
CREATE TABLE Info_AP( 
cod_AP INT PRIMARY KEY  AUTO_INCREMENT,
QTDQuartos INT NOT NULL,
QTDSuites INT NOT NULL,
QTDSala_estar INT NOT NULL,
QTDSala_jantar INT NOT NULL,
QTDGaragem INT NOT NULL,
area_m2 INT NOT NULL,
armario_embutido VARCHAR (10) NOT NULL,
descricao VARCHAR(50) NOT NULL,
andar INT NOT NULL,
ValorCondominio INT NOT NULL,
portaria_24h VARCHAR (10),
cod_imovelFK_ap INT NOT NULL,
FOREIGN KEY (cod_imovelFK_ap) REFERENCES Imoveis(cod_imovel)
);
  
CREATE TABLE Info_Comercial (
cod_comercial INT PRIMARY KEY  AUTO_INCREMENT,
area_m2 INT NOT NULL,
QTDBanheiros INT NOT NULL,
QTDComodos INT NOT NULL,
cod_imovelFK_comercial INT NOT NULL,
FOREIGN KEY (cod_imovelFK_comercial) REFERENCES Imoveis(cod_imovel)
);    
    
CREATE TABLE Info_terreno ( 
cod_terreno INT PRIMARY KEY  AUTO_INCREMENT,
area_m2 INT NOT NULL,
largura INT NOT NULL,
comprimento INT NOT NULL,
possui_aclive_declive VARCHAR(50) NOT NULL,
cod_imovelFK_terreno INT NOT NULL,
FOREIGN KEY (cod_imovelFK_terreno) REFERENCES Imoveis(cod_imovel)
);

CREATE TABLE Rel_imobiliaria ( 
cod_rel_imobiliaria INT PRIMARY KEY  AUTO_INCREMENT,
relacao VARCHAR(15) NOT NULL
);
 
CREATE TABLE Clientes (
cod_cliente INT PRIMARY KEY  AUTO_INCREMENT,
cliente VARCHAR(30) NOT NULL,
telefone VARCHAR(13) NOT NULL,
cpf VARCHAR(11) NOT NULL,
email VARCHAR (30) NOT NULL,
cod_imovelFK_clientes INT NOT NULL,
FOREIGN KEY (cod_imovelFK_clientes) REFERENCES Imoveis(cod_imovel),
cod_categoriafk_clientes INT NOT NULL,
FOREIGN KEY (cod_imovelFK_clientes) REFERENCES Categoria_imovel(cod_categoria),
cod_rel_imobiliariaFK_clientes INT NOT NULL,
FOREIGN KEY (cod_imovelFK_clientes) REFERENCES  Rel_imobiliaria(cod_rel_imobiliaria)
);
 
CREATE TABLE Corretor (
cod_corretor INT PRIMARY KEY  AUTO_INCREMENT,
nome_corretor VARCHAR(30) NOT NULL,
porcentagem_comissao DECIMAL(3,2) NOT NULL,
cod_clienteFK_corretor INT NOT NULL,
FOREIGN KEY (cod_clienteFK_corretor) REFERENCES  Clientes(cod_cliente)
);

CREATE TABLE Vendas(
cod_vendas INT PRIMARY KEY  AUTO_INCREMENT,
valor_venda DECIMAL(8,2) NOT NULL,
valor_comissao DECIMAL(8,2) NOT NULL,
data_venda DATE NOT NULL,
valor_aluguel DECIMAL(8,2) NOT NULL,
comissao_aluguel DECIMAL(8,2) NOT NULL,
data_alugado DATE NOT NULL,
cod_clienteFK_vendas INT NOT NULL,
FOREIGN KEY (cod_clienteFK_vendas) REFERENCES  Clientes(cod_cliente),
cod_corretor_vendas INT NOT NULL,
FOREIGN KEY (cod_corretor_vendas) REFERENCES  Corretor(cod_corretor)
);

INSERT INTO categoria_imovel (categoria) VALUES ('Casa');
INSERT INTO categoria_imovel (categoria) VALUES ('Apartamento');
INSERT INTO categoria_imovel (categoria) VALUES ('Terreno');
INSERT INTO categoria_imovel (categoria) VALUES ('Comercial');


INSERT INTO imoveis (foto, endereço, cidade, data_construcao, bairro, valor, cod_categoriaFK) VALUES ( 'visão_geral_casa.jpg', 'Mineiros do Tiete', 'Campinas' ,'2002-10-09', 'Vila Pompeia', 120000.00, 1);
INSERT INTO imoveis (foto, endereço, cidade, data_construcao, bairro, valor, cod_categoriaFK) VALUES ( 'visão_geral_casa2.jpg', 'Rua São José dos Campos', 'Campos do Jordão' ,'2019-02-01', 'Jardim do Trevo', 2000.00, 1);
INSERT INTO imoveis (foto, endereço, cidade, data_construcao, bairro, valor, cod_categoriaFK) VALUES ( 'visão_geral_apartamento.jpg', 'Rua Abel Luiz Ferreira', 'Batatais' ,'2022-12-10', 'Jardim do Lago', 350000.00, 2);
INSERT INTO imoveis (foto, endereço, cidade, data_construcao, bairro, valor, cod_categoriaFK) VALUES ('visão_geral_apartamento2.jpg', 'Rua Abel ', 'Adamantina' ,'2020-12-10', 'Jardim do Mato', 10000.00, 2);
INSERT INTO imoveis (foto, endereço, cidade, data_construcao, bairro, valor, cod_categoriaFK) VALUES ( 'visão_geral_terreno.jpg', 'Rua São José ', 'Jundiaí' ,'2017-02-01', 'Jardim dos Amarais', 550000.00, 3);
INSERT INTO imoveis (foto, endereço, cidade, data_construcao, bairro, valor, cod_categoriaFK) VALUES ('visão_geral_terreno2.jpg', 'Rua Amapá ', 'Ubatuba' ,'2022-10-11', 'Jardim das Cascavéis', 600000.00, 3);
INSERT INTO imoveis (foto, endereço, cidade, data_construcao, bairro, valor, cod_categoriaFK) VALUES ( 'visão_geral_comercial.jpg', 'Rua Amazonas ', 'Umuarama' ,'1999-12-01', 'Jardim das Corais', 3000.00, 4);
INSERT INTO imoveis (foto, endereço, cidade, data_construcao, bairro, valor, cod_categoriaFK) VALUES ( 'visão_geral_comercial2.jpg', 'Rua Minas Gerais ', 'Argentina' ,'2000-12-01', 'Jardim do Beco', 1000, 4);


INSERT INTO status_imovel (status_imovel, cod_imovelFK_statusImovel) VALUES ( 'Vendido', 1);
INSERT INTO status_imovel (status_imovel, cod_imovelFK_statusImovel) VALUES ( 'Vendido', 2);
INSERT INTO status_imovel (status_imovel, cod_imovelFK_statusImovel) VALUES ( 'Alugado', 3);
INSERT INTO status_imovel (status_imovel, cod_imovelFK_statusImovel) VALUES ( 'Alugado', 4);
INSERT INTO status_imovel (status_imovel, cod_imovelFK_statusImovel) VALUES ( 'Vende-se', 5);
INSERT INTO status_imovel (status_imovel, cod_imovelFK_statusImovel) VALUES ( 'Vende-se', 6);
INSERT INTO status_imovel (status_imovel, cod_imovelFK_statusImovel) VALUES ( 'Aluga-se', 7);
INSERT INTO status_imovel (status_imovel, cod_imovelFK_statusImovel) VALUES ( 'Aluga-se', 8);


INSERT INTO info_casa (QTDQuartos, QTDSuites, QTDSala_estar, QTDSala_jantar, QTDGaragem, area_m2, armario_embutido, descricao, cod_imovelFK_casa) VALUES ( 3, 1, 1, 1, 2, '1000m2', 'Sim', 'Casa com 3 armários embutidos e garagem coberta', 1);
INSERT INTO info_casa (QTDQuartos, QTDSuites, QTDSala_estar, QTDSala_jantar, QTDGaragem, area_m2, armario_embutido, descricao, cod_imovelFK_casa) VALUES ( 1, 1, 1, 1, 1, '1500m2', 'Não', 'Casa com piscina aquecida e churrasqueira', 2);


INSERT INTO info_ap (QTDQuartos, QTDSuites, QTDSala_estar, QTDSala_jantar, QTDGaragem, area_m2, armario_embutido, descricao, andar, ValorCondominio, portaria_24h, cod_imovelFK_ap) VALUES (2, 1, 1, 1, 2, 90, 'Sim', 'Apartamento com vista para o mar' ,10, 350, 'Sim', 3);
INSERT INTO info_ap (QTDQuartos, QTDSuites, QTDSala_estar, QTDSala_jantar, QTDGaragem, area_m2, armario_embutido, descricao, andar, ValorCondominio, portaria_24h, cod_imovelFK_ap) VALUES (2, 0, 1, 1, 1, 80, 'Não', 'Garagem coberta' ,20, 400, 'Sim', 4);
   

INSERT INTO info_terreno (area_m2, largura, comprimento, possui_aclive_declive, cod_imovelFK_terreno) VALUES (100, 250, 300, 'Não Possui Aclive nem Declive', 5);
INSERT INTO info_terreno (area_m2, largura, comprimento, possui_aclive_declive, cod_imovelFK_terreno) VALUES (300, 500, 700, 'Possui Aclive', 6);


INSERT INTO info_comercial (area_m2, QTDBanheiros, QTDComodos, cod_imovelFK_comercial) VALUES (80, 2, 2, 7);
INSERT INTO info_comercial (area_m2, QTDBanheiros, QTDComodos, cod_imovelFK_comercial) VALUES (60, 1, 1, 8);


INSERT INTO rel_imobiliaria (relacao) VALUES ('Inquilino');
INSERT INTO rel_imobiliaria (relacao) VALUES ('Locatário');
INSERT INTO rel_imobiliaria (relacao) VALUES ('Comprador');
INSERT INTO rel_imobiliaria (relacao) VALUES ('Vendedor');


INSERT INTO Clientes (nome, telefone, cpf, email, cod_imovelFK_clientes, cod_categoriafk_clientes,cod_rel_imobiliariaFK_clientes) VALUES ('Giovanna Zanetti', '(019) 9974068631',  '45515577819', 'giihzanetti@outlook.com', 1, 1 ,1);
INSERT INTO Clientes (nome, telefone, cpf, email, cod_imovelFK_clientes, cod_categoriafk_clientes,cod_rel_imobiliariaFK_clientes) VALUES ('Beatriz Reis', '(019) 997195444',  '12345678910', 'beatriz_reis@outlook.com', 2, 2 ,2);
INSERT INTO Clientes (nome, telefone, cpf, email, cod_imovelFK_clientes, cod_categoriafk_clientes,cod_rel_imobiliariaFK_clientes) VALUES ('Elizabeth Weber', '(019) 998417922',  '03876538312', 'lizweberjoui@outlook.com', 3, 3 ,3);
INSERT INTO Clientes (nome, telefone, cpf, email, cod_imovelFK_clientes, cod_categoriafk_clientes,cod_rel_imobiliariaFK_clientes) VALUES ('Thiago Fritz', '(019) 997403269',  '98344419265', 'thiagao@outlook.com', 4, 4 ,4);


INSERT INTO Corretor(nome_corretor, porcentagem_comissao, cod_clienteFK_corretor) VALUES ('Cezar Cohen', 5.00, 1);
INSERT INTO Corretor(nome_corretor, porcentagem_comissao, cod_clienteFK_corretor) VALUES ('Arthur Cervero', 7.00, 2);
INSERT INTO Corretor(nome_corretor, porcentagem_comissao, cod_clienteFK_corretor) VALUES ('Cristopher Cohen', 6.00, 3);
INSERT INTO Corretor(nome_corretor, porcentagem_comissao, cod_clienteFK_corretor) VALUES ('Joui Jouki', 4.00, 4);


INSERT INTO Vendas(valor_venda,valor_comissao,data_venda,valor_aluguel,comissao_aluguel,data_alugado,cod_clienteFK_vendas,cod_corretor_vendas) VALUES (280000.00, 1000.00, 2022-01-01, 1200.00, 8.00, 2022-10-21, 1, 1);
INSERT INTO Vendas(valor_venda,valor_comissao,data_venda,valor_aluguel,comissao_aluguel,data_alugado,cod_clienteFK_vendas,cod_corretor_vendas) VALUES (230000.00, 1000.00, 2022-09-07, 1000.00, 5.00, 2022-10-19, 2, 2);
INSERT INTO Vendas(valor_venda,valor_comissao,data_venda,valor_aluguel,comissao_aluguel,data_alugado,cod_clienteFK_vendas,cod_corretor_vendas) VALUES (350000.00, 1000.00, 2022-01-04, 2500.00, 10.00, 2022-10-18, 3, 3);
INSERT INTO Vendas(valor_venda,valor_comissao,data_venda,valor_aluguel,comissao_aluguel,data_alugado,cod_clienteFK_vendas,cod_corretor_vendas) VALUES (900000.00, 1000.00, 2022-10-15, 6000.00, 25.00, 2022-10-17, 4, 4);
