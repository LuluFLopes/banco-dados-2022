-- SELECT * FROM CLIENTE;

INSERT INTO CLIENTE
VALUES (NULL, 'José', '111.111.111-11','jose@gmail.com', '1234','1992-02-21','Desenvolvedor Pleno', 'Masculino', NULL),
	   (NULL, 'Carlos', '222.222.222-22','carlos@hotmail.com.br', '5678','1982-10-10','PO', 'Masculino', NULL),
       (NULL, 'Maria', '333.333.333-33','maria@outlook.com.br', '91011','1995-05-28','Desenvolvedor Junior', 'Feminino', NULL),
       (NULL, 'João', '444.444.444-44','joao@gmail.com', '121314','1988-07-19','Desenvolvedor Sênior', 'Masculino', NULL),
       (NULL, 'Carla', '555.555.555-55','carla@gmail.com', '151617','1978-08-02','Desenvolvedor Sênior', 'Feminino', NULL);

-- SELECT * FROM ENDERECO;

INSERT INTO ENDERECO
VALUES (NULL, '11111-111', 'Rua teste 1', 1,'Complemento 1','Bairro teste 1', 'Cidade teste 1', 'Estado teste 1', 'País teste 1', 1),
	   (NULL, '22222-222', 'Rua teste 2', 2,'Complemento 2','Bairro teste 2', 'Cidade teste 2', 'Estado teste 2', 'País teste 2', 2),
       (NULL, '33333-333', 'Rua teste 3', 3,'Complemento 3','Bairro teste 3', 'Cidade teste 3', 'Estado teste 3', 'País teste 3', 3),
       (NULL, '44444-444', 'Rua teste 4', 4,'Complemento 4','Bairro teste 4', 'Cidade teste 4', 'Estado teste 4', 'País teste 4', 4),
       (NULL, '55555-555', 'Rua teste 5', 5,'Complemento 5','Bairro teste 5', 'Cidade teste 5', 'Estado teste 5', 'País teste 5', 5);
       
 SELECT * FROM CONTA_CORRENTE;
    
INSERT INTO CONTA_CORRENTE (COD_BANCO, NOME_BANCO, NUM_CONTA, AGENCIA, APELIDO, SALDO, FK_ID_CLIENTE)
VALUES (237,'Bradesco', 11111,22222,'Principal', 12000.00,1),
	   (260,'NuBank', 33333,4444,'Secundaria', 2000.00,2),
       (341,'Itaú', 55555,77777,'Principal', 10000.00,3),
       (237,'Bradesco', 8888,9999999,'Conta Filho',20000.00,4),
       (341,'Itaú', 101010,121212,'Principal',55000.00,5),
       (237,'NuBank', 515151,9999999,'Conta Roxinho',5000.00,4);
       
-- SELECT * FROM ID_CLIENTE_CONTA;

INSERT INTO ID_CLIENTE_CONTA
VALUES (1,1),
	   (2,2),
       (3,3),
       (4,4),
       (5,5);
       
-- SELECT * FROM MOVIMENTO_FINANCEIRO;
 
INSERT INTO MOVIMENTO_FINANCEIRO
VALUES (NULL, 1000.50, '2020-05-21 00:00:00', 'Mercado',1,1),
	   (NULL, 500.65, '2020-06-07 00:00:00', 'Mecânico',2,2),
	   (NULL, 1500.17, '2020-04-15 00:00:00', 'Aluguel',3,3),
	   (NULL, 3000.22, '2020-07-19 00:00:00', 'Viagem',4,4),
	   (NULL, 50000.00, '2020-08-21 00:00:00', 'Veículo',5,5),
       (NULL, 1000.50, '2022-01-21 00:00:00', 'Mercado',1,1),
	   (NULL, 500.65, '2022-02-07 00:00:00', 'Mecânico',2,2),
	   (NULL, 1500.17, '2022-03-15 00:00:00', 'Aluguel',3,3),
	   (NULL, 3000.22, '2022-07-19 00:00:00', 'Viagem',4,4),
       (NULL, 1000.50, '2022-10-01 00:00:00', 'Mercado',1,1),
	   (NULL, 500.65, '2022-10-02 00:00:00', 'Mecânico',2,2),
	   (NULL, 1500.17, '2022-10-03 00:00:00', 'Aluguel',3,3),
	   (NULL, 3000.22, '2022-10-04 00:00:00', 'Viagem',4,4);