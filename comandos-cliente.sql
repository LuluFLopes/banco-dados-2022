-- 1
SELECT CATEGORIA AS 'Categoria', DESCRICAO AS 'Descrição', 
CLASSIFICA_DESPESA AS 'Tipo de Classificação', VALOR AS 'Valor Gasto' 
FROM MOVIMENTO_FINANCEIRO
WHERE MONTH(DATA_MOVIMENTO) = 8
AND YEAR(DATA_MOVIMENTO) = 2022
AND FK_ID_CLIENTE = 5;

-- 2
SELECT MF.CATEGORIA AS 'Categoria', MF.DESCRICAO AS 'Descrição', 
MF.CLASSIFICA_DESPESA AS 'Tipo de Classificação', MF.VALOR AS 'Valor Gasto'
FROM MOVIMENTO_FINANCEIRO MF
INNER JOIN CONTA_CORRENTE CC
ON CC.FK_ID_CLIENTE = MF.FK_ID_CLIENTE
WHERE CC.COD_BANCO = 237
AND MF.FK_ID_CLIENTE = 1;

-- 3
SELECT CATEGORIA FROM MOVIMENTO_FINANCEIRO
WHERE CATEGORIA LIKE '%Trabalho%';

-- 4
SELECT CATEGORIA AS 'Categoria', DESCRICAO AS 'Descrição', 
CLASSIFICA_DESPESA AS 'Tipo de Classificação', VALOR AS 'Valor Gasto' 
FROM MOVIMENTO_FINANCEIRO
WHERE DATA_MOVIMENTO BETWEEN '2022-01-01 00:00:00' AND '2022-06-01 00:00:00'
AND FK_ID_CLIENTE = 2;

-- 5
SELECT DISTINCT TRIM(DESCRICAO) AS 'Descrição' 
FROM MOVIMENTO_FINANCEIRO
WHERE DATA_MOVIMENTO BETWEEN '2022-09-01 00:00:00' AND '2022-09-04 00:00:00'
ORDER BY DESCRICAO ASC;

-- 6
SELECT CATEGORIA AS 'Categoria', ROUND(VALOR,2) AS 'Valor Gasto' 
FROM MOVIMENTO_FINANCEIRO
WHERE FK_ID_CLIENTE = 5 AND VALOR > 1000.00
GROUP BY CATEGORIA;

-- 7
SELECT *
FROM MOVIMENTO_FINANCEIRO
WHERE FK_ID_CLIENTE = 4
ORDER BY DATA_MOVIMENTO DESC LIMIT 5;

-- 8
SELECT ROUND(VALOR,2) AS 'Maior Valor'
FROM MOVIMENTO_FINANCEIRO
WHERE MONTH(DATA_MOVIMENTO) = 8
ORDER BY VALOR DESC LIMIT 1;

-- 9
SET @@lc_time_names = 'pt_BR';

SELECT DISTINCT (SELECT MONTHNAME(DATA_MOVIMENTO) FROM MOVIMENTO_FINANCEIRO
GROUP BY MONTHNAME(DATA_MOVIMENTO) ORDER BY VALOR DESC LIMIT 1) AS 'Mês', (SELECT CATEGORIA FROM MOVIMENTO_FINANCEIRO
GROUP BY MONTHNAME(DATA_MOVIMENTO) ORDER BY VALOR DESC LIMIT 1) AS 'Categoria', (SELECT ROUND(SUM(VALOR),2) FROM MOVIMENTO_FINANCEIRO
WHERE YEAR(DATA_MOVIMENTO) = 2022 GROUP BY MONTHNAME(DATA_MOVIMENTO) ORDER BY VALOR DESC LIMIT 1) AS 'Valor Gasto'
FROM MOVIMENTO_FINANCEIRO;

-- 10
SELECT NOME_BANCO AS 'Banco', SALDO AS 'Saldo Atual' 
FROM CONTA_CORRENTE 
WHERE FK_ID_CLIENTE = 4;