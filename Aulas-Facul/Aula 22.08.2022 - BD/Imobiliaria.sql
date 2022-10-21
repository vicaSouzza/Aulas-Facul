CREATE DATABASE Imobiliaria;
USE Imobiliaria;


CREATE TABLE Categoria_imovel( 
cod_categoria INT PRIMARY KEY  AUTO_INCREMENT, 
categoria VARCHAR(20) NOT NULL
); 

CREATE TABLE Imoveis(
cod_imovel INT PRIMARY KEY  AUTO_INCREMENT,
foto_imovel VARCHAR (50) NOT NULL,
endereço VARCHAR (30) NOT NULL,
numero_casa DECIMAL (8) NOT NULL,
data_construção DATE NOT NULL, 
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
nome_cliente VARCHAR(30) NOT NULL,
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

