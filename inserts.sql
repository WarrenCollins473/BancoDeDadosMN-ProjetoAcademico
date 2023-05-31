INSERT INTO Cliente (data_de_nascimento,telefone,nome,CPF) VALUES
('2000/06/27','57415-5526','Maíra','25545554786');
INSERT INTO Cliente (data_de_nascimento,telefone,nome,CPF) VALUES
('1997/12/27','66524-5412','Fabrício','25425641365');
INSERT INTO Cliente (data_de_nascimento,telefone,nome,CPF)
VALUES ('1975/05/29','54486-6256','Celeste','44712545669');
INSERT INTO prestador_de_servico (contato, nome,CPF)
VALUES
('54847-6956','Natália','1445588996');
INSERT INTO prestador_de_servico (contato, nome,CPF)
VALUES ('48574-9623','Marília','4411584412');
INSERT INTO prestador_de_servico (contato, nome,CPF)
VALUES ('47185-6322','Mariane','6958741489');
INSERT INTO Procedimentos (nome,tipo,anamnese,)
VALUES ('depilação','simples','não');
INSERT INO Procedimentos (nome,tipo,anamnese)
VALUES ('micropigmentação','simples','não');
INSERT INTO Procedimentos (nome,tipo,anamnese)
VALUES ('microagulhamento','invasivo','sim');
INSERT INTO Produto (nome,data_de_validade,fornecedor)
VALUES ('shampoo','2023/05/01','Cosmeticos LTDA');
INSERT INTO Produto (nome,data_de_validade,fornecedor)
VALUES ('hidratação','2023/05/01','Cosmeticos LTDA');
INSERT INTO Produto (nome,data_de_validade,fornecedor)
VALUES ('esmalte','2023/05/01','Cosmeticos LTDA');
INSERT INTO Estoque (quantidade,fk_Produto_ID_do_produto) VALUES (10,1);
INSERT INTO Estoque (quantidade,fk_Produto_ID_do_produto) VALUES (5,2);
INSERT INTO Estoque (quantidade,fk_Produto_ID_do_produto) VALUES (7,3);
INSERT INTO Contas
(descricao,tipo,valor,data_de_pagamento,codigo_de_barras,data_d
e_vencimento) VALUES
('conta','fixa','20.0','2022/05/17','451562633665','2022/09/22');
INSERT INTO Contas
(descricao,tipo,valor,data_de_pagamento,codigo_de_barras,data_d
e_vencimento) VALUES
('conta','variável','150.0','2022/05/17','45156263665','2022/09/29');
INSERT INTO Contas
(descricao,tipo,valor,data_de_pagamento,codigo_de_barras,data_d
e_vencimento) VALUES
('conta','fixa','100.0','2022/05/17','45156269665','2022/12/13');
INSERT INTO usa (fk_Procedimentos_ID_do_procedimento,
fk_Produto_ID_do_produto) VALUES (1,1);
INSERT INTO usa (fk_Procedimentos_ID_do_procedimento,
fk_Produto_ID_do_produto) VALUES (1,2);
INSERT INTO usa (fk_Procedimentos_ID_do_procedimento,
fk_Produto_ID_do_produto) VALUES (3,2);
INSERT INTO comissao
(fk_Prestador_de_servico_ID_do_prestador_de_servico,valor) VALUES (1,'10.0');
INSERT INTO comissao
(fk_Prestador_de_servico_ID_do_prestador_de_servico,valor) VALUES (2,'20.0');
INSERT INTO comissao
(fk_Prestador_de_servico_ID_do_prestador_de_servico,valor) VALUES (3,'40.0');
INSERT INTO valor_procedimento
(fk_Procedimentos_ID_do_procedimento,valor_procedimento) VALUES (1,'80.0');
INSERT INTO valor_procedimento
(fk_Procedimentos_ID_do_procedimento,valor_procedimento) VALUES (2,'80.0');
INSERT INTO valor_procedimento
(fk_Procedimentos_ID_do_procedimento,valor_procedimento) VALUES (3,'30.0');
INSERT INTO
atende_Prestador_de_servico_Procedimentos_Cliente(fk_Prestador_de_servico_ID_d
o_prestador_de_servico,fk_Procedimentos_ID_do_procedimento,fk_Cliente_ID_do_cli
ente,valor_pago,forma_de_pagamento,data_de_realização)
VALUES (1,2,3,'80.0','cartão','2022/05/17');
INSERT INTO
atende_Prestador_de_servico_Procedimentos_Cliente(fk_Prestador_de_servico_ID_d
o_prestador_de_servico,fk_Procedimentos_ID_do_procedimento,fk_Cliente_ID_do_cli
ente,valor_pago,forma_de_pagamento,data_de_realização)
VALUES (2,2,1,'80.0','cartão','2022/05/17');
INSERT INTO
atende_Prestador_de_servico_Procedimentos_Cliente(fk_Prestador_de_servico_ID_d
o_prestador_de_servico,fk_Procedimentos_ID_do_procedimento,fk_Cliente_ID_do_cli
ente,valor_pago,forma_de_pagamento,data_de_realização)
VALUES (3,1,2,'80.0','dinheiro','2022/05/17');
INSERT INTO
Agenda_Cliente_Prestador_de_servico_Procedimentos(fk_Cliente_ID_do_cliente,fk_P
restador_de_servico_ID_do_prestador_de_servico,fk_Procedimentos_ID_do_procedi
mento,dia,hora) VALUES (3,2,1,'2022/05/17','10:00');
INSERT INTO
Agenda_Cliente_Prestador_de_servico_Procedimentos(fk_Cliente_ID_do_cliente,fk_P
restador_de_servico_ID_do_prestador_de_servico,fk_Procedimentos_ID_do_procedi
mento,dia,hora) VALUES (1,2,2,'2022/05/17','11:00');
INSERT INTO
Agenda_Cliente_Prestador_de_servico_Procedimentos(fk_Cliente_ID_do_cliente,fk_P
restador_de_servico_ID_do_prestador_de_servico,fk_Procedimentos_ID_do_procedi
mento,dia,hora) VALUES (2,1,3,'2022/05/17','11:00');
INSERT INTO faz
(fk_Prestador_de_servico_ID_do_prestador_de_servico,fk_Procedimentos_ID_do_pro
cedimento) VALUES (1,1);
INSERT INTO faz
(fk_Prestador_de_servico_ID_do_prestador_de_servico,fk_Procedimentos_ID_do_pro
cedimento) VALUES (1,2);
INSERT INTO faz
(fk_Prestador_de_servico_ID_do_prestador_de_servico,fk_Procedimentos_ID_do_pro
cedimento) VALUES (2,3);







INSERT INTO Cliente (data_de_nascimento,telefone,nome,CPF,ID_do_cliente) VALUES
('2000/06/27','57415-5526','Maíra','25545554786');
INSERT INTO Cliente (data_de_nascimento,telefone,nome,CPF,ID_do_cliente) VALUES
('1997/12/27','66524-5412','Fabrício','25425641365',2);
INSERT INTO Cliente (data_de_nascimento,telefone,nome,CPF,ID_do_cliente)
VALUES ('1975/05/29','54486-6256','Celeste','44712545669',3);
INSERT INTO prestador_de_servico (contato, nome,CPF,ID_do_prestador_de_servico)
VALUES
('54847-6956','Natália','1445588996',1);
INSERT INTO prestador_de_servico (contato, nome,CPF,ID_do_prestador_de_servico)
VALUES ('48574-9623','Marília','4411584412',2);
INSERT INTO prestador_de_servico (contato, nome,CPF,ID_do_prestador_de_servico)
VALUES ('47185-6322','Mariane','6958741489',3);
INSERT INTO Procedimentos (nome,tipo,anamnese,ID_do_procedimento)
VALUES ('depilação','simples','não',1);
INSERT INO Procedimentos (nome,tipo,anamnese,ID_do_procedimento)
VALUES ('micropigmentação','simples','não',2);
INSERT INTO Procedimentos (nome,tipo,anamnese,ID_do_procedimento)
VALUES ('microagulhamento','invasivo','sim',3);
INSERT INTO Produto (nome,ID_do_produto,data_de_validade,fornecedor)
VALUES ('shampoo',1,'2023/05/01','Cosmeticos LTDA');
INSERT INTO Produto (nome,ID_do_produto,data_de_validade,fornecedor)
VALUES ('hidratação',2,'2023/05/01','Cosmeticos LTDA');
INSERT INTO Produto (nome,ID_do_produto,data_de_validade,fornecedor)
VALUES ('esmalte',3,'2023/05/01','Cosmeticos LTDA');
INSERT INTO Estoque (quantidade,fk_Produto_ID_do_produto) VALUES (10,1);
INSERT INTO Estoque (quantidade,fk_Produto_ID_do_produto) VALUES (5,2);
INSERT INTO Estoque (quantidade,fk_Produto_ID_do_produto) VALUES (7,3);
INSERT INTO Contas
(descricao,tipo,valor,data_de_pagamento,ID_da_conta,codigo_de_barras,data_d
e_vencimento) VALUES
('conta','fixa','20.0','2022/05/17',1,'451562633665','2022/09/22');
INSERT INTO Contas
(descricao,tipo,valor,data_de_pagamento,ID_da_conta,codigo_de_barras,data_d
e_vencimento) VALUES
('conta','variável','150.0','2022/05/17',2,'45156263665','2022/09/29');
INSERT INTO Contas
(descricao,tipo,valor,data_de_pagamento,ID_da_conta,codigo_de_barras,data_d
e_vencimento) VALUES
('conta','fixa','100.0','2022/05/17',3,'45156269665','2022/12/13');
INSERT INTO usa (fk_Procedimentos_ID_do_procedimento,
fk_Produto_ID_do_produto) VALUES (1,1);
INSERT INTO usa (fk_Procedimentos_ID_do_procedimento,
fk_Produto_ID_do_produto) VALUES (1,2);
INSERT INTO usa (fk_Procedimentos_ID_do_procedimento,
fk_Produto_ID_do_produto) VALUES (3,2);
INSERT INTO comissao
(fk_Prestador_de_servico_ID_do_prestador_de_servico,valor) VALUES (1,'10.0');
INSERT INTO comissao
(fk_Prestador_de_servico_ID_do_prestador_de_servico,valor) VALUES (2,'20.0');
INSERT INTO comissao
(fk_Prestador_de_servico_ID_do_prestador_de_servico,valor) VALUES (3,'40.0');
INSERT INTO valor_procedimento
(fk_Procedimentos_ID_do_procedimento,valor_procedimento) VALUES (1,'80.0');
INSERT INTO valor_procedimento
(fk_Procedimentos_ID_do_procedimento,valor_procedimento) VALUES (2,'80.0');
INSERT INTO valor_procedimento
(fk_Procedimentos_ID_do_procedimento,valor_procedimento) VALUES (3,'30.0');
INSERT INTO
atende_Prestador_de_servico_Procedimentos_Cliente(fk_Prestador_de_servico_ID_d
o_prestador_de_servico,fk_Procedimentos_ID_do_procedimento,fk_Cliente_ID_do_cli
ente,valor_pago,forma_de_pagamento,data_de_realização,ID_do_atendimento)
VALUES (1,2,3,'80.0','cartão','2022/05/17',1);
INSERT INTO
atende_Prestador_de_servico_Procedimentos_Cliente(fk_Prestador_de_servico_ID_d
o_prestador_de_servico,fk_Procedimentos_ID_do_procedimento,fk_Cliente_ID_do_cli
ente,valor_pago,forma_de_pagamento,data_de_realização,ID_do_atendimento)
VALUES (2,2,1,'80.0','cartão','2022/05/17',2);
INSERT INTO
atende_Prestador_de_servico_Procedimentos_Cliente(fk_Prestador_de_servico_ID_d
o_prestador_de_servico,fk_Procedimentos_ID_do_procedimento,fk_Cliente_ID_do_cli
ente,valor_pago,forma_de_pagamento,data_de_realização,ID_do_atendimento)
VALUES (3,1,2,'80.0','dinheiro','2022/05/17',3);
INSERT INTO
Agenda_Cliente_Prestador_de_servico_Procedimentos(fk_Cliente_ID_do_cliente,fk_P
restador_de_servico_ID_do_prestador_de_servico,fk_Procedimentos_ID_do_procedi
mento,dia,hora,ID_do_agendamento) VALUES (3,2,1,'2022/05/17','10:00',1);
INSERT INTO
Agenda_Cliente_Prestador_de_servico_Procedimentos(fk_Cliente_ID_do_cliente,fk_P
restador_de_servico_ID_do_prestador_de_servico,fk_Procedimentos_ID_do_procedi
mento,dia,hora,ID_do_agendamento) VALUES (1,2,2,'2022/05/17','11:00',2);
INSERT INTO
Agenda_Cliente_Prestador_de_servico_Procedimentos(fk_Cliente_ID_do_cliente,fk_P
restador_de_servico_ID_do_prestador_de_servico,fk_Procedimentos_ID_do_procedi
mento,dia,hora,ID_do_agendamento) VALUES (2,1,3,'2022/05/17','11:00',3);
INSERT INTO faz
(fk_Prestador_de_servico_ID_do_prestador_de_servico,fk_Procedimentos_ID_do_pro
cedimento) VALUES (1,1);
INSERT INTO faz
(fk_Prestador_de_servico_ID_do_prestador_de_servico,fk_Procedimentos_ID_do_pro
cedimento) VALUES (1,2);
INSERT INTO faz
(fk_Prestador_de_servico_ID_do_prestador_de_servico,fk_Procedimentos_ID_do_pro
cedimento) VALUES (2,3);