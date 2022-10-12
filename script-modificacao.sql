ALTER TABLE MOVIMENTO_FINANCEIRO
ADD COLUMN DESCRICAO VARCHAR(50) NOT NULL;
    
ALTER TABLE MOVIMENTO_FINANCEIRO
MODIFY COLUMN VALOR DECIMAL(10,4);
    
ALTER TABLE MOVIMENTO_FINANCEIRO
ADD COLUMN CLASSIFICA_DESPESA VARCHAR(50) DEFAULT 'Despesa';

-- SELECT * FROM MOVIMENTO_FINANCEIRO;

INSERT INTO MOVIMENTO_FINANCEIRO (VALOR,DATA_MOVIMENTO,CATEGORIA,FK_ID_CLIENTE,FK_ID_CONTA,DESCRICAO)
VALUES (750.1457, '2022-06-11 00:00:00', 'Mercado',1,1,'Compras do mês'),
	   (1200.0000, '2022-07-14 00:00:00', 'Aluguel',3,3,'Pagamento do aluguel no mês de maio'),
       (150.1571, '2022-07-14 00:00:00', 'Gasolina para trabalho',4,4,'Combustível para viagem ao sul do país'),
       (500.0000, '2022-07-14 00:00:00', 'Material trabalho',4,4,'Epi para os funcionários'),
	   (1500.0000, '2022-09-01 00:00:00', 'Material trabalho',4,4,'Sacos de cimento'),
	   (2500.0000, '2022-09-02 00:00:00', 'Material trabalho',4,4,'Equipamentos de eletrônica'),
	   (2000.0000, '2022-09-03 00:00:00', 'Material trabalho',4,4,'Ar Condicionado'),
       (2000.0000, '2022-09-03 00:00:00', 'Mercado trabalho',4,4,'Compra para almoço de funcionários'),
       (50.00, '2022-09-03 00:00:00', 'Alimentação trabalho',4,4,'Almoço referente ao dia 09/03'),
       (150.00, '2022-09-03 00:00:00', 'Farmácia',4,4,'Compra de medicamentos para uso pessoal'),
       (500.00, '2022-09-03 00:00:00', 'Açougue',4,4,'Compra para churrasco no final de semana'),
	   (421.1475, '2022-08-07 00:00:00', 'Mecânico',5,5,'Manutenção preventiva');

INSERT INTO MOVIMENTO_FINANCEIRO
VALUES (NULL, 5000.00, '2022-05-05 00:00:00', 'Salário',1,1,'Recebimento salário', 'Receita'),
	   (NULL, 3000.00, '2022-06-05 00:00:00', 'Salário',3,3,'Recebimento salário', 'Receita');
       
 SELECT * FROM CONTA_CORRENTE;