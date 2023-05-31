CREATE TABLE Cliente (
data_de_nascimento DATE,
telefone CHAR(15),
nome CHAR(30),
CPF CHAR(11),
ID_do_cliente SMALLINT(6) PRIMARY KEY UNIQUE AUTO_INCREMENT
);
CREATE TABLE Prestador_de_servico (
contato CHAR(15),
nome CHAR(30),
CPF CHAR(11),
ID_do_prestador_de_servico SMALLINT(6) PRIMARY KEY UNIQUE AUTO_INCREMENT
);
CREATE TABLE Procedimentos (
nome CHAR(30),
tipo CHAR(10),
anamnese CHAR(6),
ID_do_procedimento SMALLINT(6) PRIMARY KEY AUTO_INCREMENT
);
CREATE TABLE Produto (
nome CHAR(30),
ID_do_produto SMALLINT(6) PRIMARY KEY UNIQUE AUTO_INCREMENT,
data_de_validade DATE,
fornecedor CHARACTER(100)
);
CREATE TABLE Contas (
descricao CHARACTER(100),
tipo CHAR(15),
valor DOUBLE(6,0),
data_de_pagamento DATE,
ID_da_conta SMALLINT(6) PRIMARY KEY UNIQUE AUTO_INCREMENT,
codigo_de_barras CHAR(30),
data_de_vencimento DATE
);
CREATE TABLE Comissao (
valor DOUBLE(6,0) PRIMARY KEY,
fk_Prestador_de_servico_ID_do_prestador_de_servico SMALLINT(6)
);
CREATE TABLE valor_procedimento (
valor_procedimento DOUBLE(6,0),
fk_Procedimentos_ID_do_procedimento SMALLINT(6)
);
CREATE TABLE faz (
fk_Prestador_de_servico_ID_do_prestador_de_servico SMALLINT(6),
fk_Procedimentos_ID_do_procedimento SMALLINT(6)
);
CREATE TABLE atende_Prestador_de_servico_Procedimentos_Cliente (
fk_Prestador_de_servico_ID_do_prestador_de_servico SMALLINT(6),
fk_Procedimentos_ID_do_procedimento SMALLINT(6),
fk_Cliente_ID_do_cliente SMALLINT(6),
valor_pago DOUBLE(6,0),
forma_de_pagamento CHAR(10),
data_de_realização DATE,
ID_do_atendimento SMALLINT(6) PRIMARY KEY UNIQUE AUTO_INCREMENT
);
CREATE TABLE usa (
fk_Procedimentos_ID_do_procedimento SMALLINT(6),
fk_Produto_ID_do_produto SMALLINT(6)
);
CREATE TABLE Agenda_Cliente_Prestador_de_servico_Procedimentos (
fk_Cliente_ID_do_cliente SMALLINT(6),
fk_Prestador_de_servico_ID_do_prestador_de_servico SMALLINT(6),
fk_Procedimentos_ID_do_procedimento SMALLINT(6),
dia DATE,
hora TIME,
ID_do_agendamento SMALLINT(6) PRIMARY KEY UNIQUE AUTO_INCREMENT
);
CREATE TABLE Estoque (
quantidade SMALLINT(6),
fk_Produto_ID_do_produto SMALLINT(6) PRIMARY KEY
);
ALTER TABLE Comissao ADD CONSTRAINT FK_Comissao_2
FOREIGN KEY (fk_Prestador_de_servico_ID_do_prestador_de_servico)
REFERENCES Prestador_de_servico (ID_do_prestador_de_servico)
ON DELETE RESTRICT;
ALTER TABLE valor_procedimento ADD CONSTRAINT FK_valor_procedimento_2
FOREIGN KEY (fk_Procedimentos_ID_do_procedimento)
REFERENCES Procedimentos (ID_do_procedimento)
ON DELETE RESTRICT;
ALTER TABLE faz ADD CONSTRAINT FK_faz_1
FOREIGN KEY (fk_Prestador_de_servico_ID_do_prestador_de_servico)
REFERENCES Prestador_de_servico (ID_do_prestador_de_servico)
ON DELETE RESTRICT;
ALTER TABLE faz ADD CONSTRAINT FK_faz_2
FOREIGN KEY (fk_Procedimentos_ID_do_procedimento)
REFERENCES Procedimentos (ID_do_procedimento)
ON DELETE RESTRICT;
ALTER TABLE atende_Prestador_de_servico_Procedimentos_Cliente ADD CONSTRAINT
FK_atende_Prestador_de_servico_Procedimentos_Cliente_1
FOREIGN KEY (fk_Prestador_de_servico_ID_do_prestador_de_servico)
REFERENCES Prestador_de_servico (ID_do_prestador_de_servico)
ON DELETE NO ACTION;
ALTER TABLE atende_Prestador_de_servico_Procedimentos_Cliente ADD CONSTRAINT
FK_atende_Prestador_de_servico_Procedimentos_Cliente_2
FOREIGN KEY (fk_Procedimentos_ID_do_procedimento)
REFERENCES Procedimentos (ID_do_procedimento)
ON DELETE NO ACTION;
ALTER TABLE atende_Prestador_de_servico_Procedimentos_Cliente ADD CONSTRAINT
FK_atende_Prestador_de_servico_Procedimentos_Cliente_3
FOREIGN KEY (fk_Cliente_ID_do_cliente)
REFERENCES Cliente (ID_do_cliente)
ON DELETE NO ACTION;
ALTER TABLE usa ADD CONSTRAINT FK_usa_1
FOREIGN KEY (fk_Procedimentos_ID_do_procedimento)
REFERENCES Procedimentos (ID_do_procedimento)
ON DELETE RESTRICT;
ALTER TABLE usa ADD CONSTRAINT FK_usa_2
FOREIGN KEY (fk_Produto_ID_do_produto)
REFERENCES Produto (ID_do_produto);
ALTER TABLE Agenda_Cliente_Prestador_de_servico_Procedimentos ADD CONSTRAINT
FK_Agenda_Cliente_Prestador_de_servico_Procedimentos_1
FOREIGN KEY (fk_Cliente_ID_do_cliente)
REFERENCES Cliente (ID_do_cliente)
ON DELETE NO ACTION;
ALTER TABLE Agenda_Cliente_Prestador_de_servico_Procedimentos ADD CONSTRAINT
FK_Agenda_Cliente_Prestador_de_servico_Procedimentos_2
FOREIGN KEY (fk_Prestador_de_servico_ID_do_prestador_de_servico)
REFERENCES Prestador_de_servico (ID_do_prestador_de_servico)
ON DELETE NO ACTION;
ALTER TABLE Agenda_Cliente_Prestador_de_servico_Procedimentos ADD CONSTRAINT
FK_Agenda_Cliente_Prestador_de_servico_Procedimentos_3
FOREIGN KEY (fk_Procedimentos_ID_do_procedimento)
REFERENCES Procedimentos (ID_do_procedimento)
ON DELETE NO ACTION;
ALTER TABLE Estoque ADD CONSTRAINT FK_Estoque_1
FOREIGN KEY (fk_Produto_ID_do_produto)
REFERENCES Produto (ID_do_produto);