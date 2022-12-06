CREATE DATABASE bdFiliados2021

USE bdFiliados2021

SELECT * FROM dbo.[Filiados_PTC (1)]


--1
SELECT NOME_DO_FILIADO AS 'Nome do filiados' FROM dbo.[Filiados_PTC (1)]
WHERE NOME_DO_FILIADO LIKE 'ANTONIO%'

--2
SELECT NOME_DO_FILIADO AS 'Nome do filiados' FROM DBO.[Filiados_PTC (1)]
WHERE NOME_DO_FILIADO LIKE '%Sebastiao'

--3
SELECT NOME_DO_FILIADO AS 'Nome do filiados' FROM dbo.[Filiados_PTC (1)]
WHERE NOME_DO_FILIADO LIKE '%OS'

--4
SELECT NOME_DO_FILIADO AS 'Nome do filiados' FROM dbo.[Filiados_PTC (1)]
WHERE NOME_DO_MUNICIPIO LIKE 'Sao Felix'

--5
SELECT NOME_DO_FILIADO AS 'Nome do filiados' FROM dbo.[Filiados_PTC (1)]
WHERE NOME_DO_MUNICIPIO LIKE 'Inhambupe'

--6
SELECT NOME_DO_MUNICIPIO AS 'Nome do Municipio' FROM dbo.[Filiados_PTC (1)]
WHERE NOME_DO_MUNICIPIO LIKE 'Santa%'

--7
SELECT NOME_DO_MUNICIPIO AS 'Nome do Municipio' FROM dbo.[Filiados_PTC (1)]
WHERE NOME_DO_MUNICIPIO LIKE 'E%'

--8
SELECT NOME_DO_MUNICIPIO AS 'Nome do Municipio' FROM dbo.[Filiados_PTC (1)]
WHERE NOME_DO_MUNICIPIO LIKE '%CRUZ%'

--9
SELECT NOME_DO_MUNICIPIO AS 'Nome do Municipio' FROM dbo.[Filiados_PTC (1)]
WHERE NOME_DO_MUNICIPIO LIKE '%DE%'

--10
SELECT DATA_DA_FILIACAO AS 'data da filiacao' FROM dbo.[Filiados_PTC (1)]
WHERE DATA_DA_FILIACAO BETWEEN '01/01/1990' AND '01/01/2000' 

--11
SELECT DATA_DA_FILIACAO AS 'data da filiacao' FROM dbo.[Filiados_PTC (1)]
WHERE DATA_DA_FILIACAO BETWEEN '02/01/2010' AND '01/03/2010' 

--12
SELECT NOME_DO_FILIADO AS 'nome do filiado ' FROM dbo.[Filiados_PTC (1)]
WHERE NOME_DO_FILIADO BETWEEN '01/07/2007' AND '31/12/2007'

--13
SELECT NOME_DO_FILIADO AS 'Nome do filiados' FROM dbo.[Filiados_PTC (1)]
WHERE SITUACAO_DO_REGISTRO LIKE 'Regular'

--14
SELECT NOME_DO_FILIADO AS 'Nome do filiados' FROM dbo.[Filiados_PTC (1)]
WHERE ZONA_ELEITORAL LIKE '203'

--15
SELECT NOME_DO_FILIADO AS 'Nome do filiados' FROM dbo.[Filiados_PTC (1)]
WHERE ZONA_ELEITORAL LIKE '180'

--16
SELECT NOME_DO_FILIADO AS 'Nome do filiados' FROM dbo.[Filiados_PTC (1)]
WHERE ZONA_ELEITORAL LIKE '199'

--17
SELECT MAX (ZONA_ELEITORAL)  
FROM dbo.[Filiados_PTC (1)]

--18
SELECT MIN (ZONA_ELEITORAL)  
FROM dbo.[Filiados_PTC (1)]