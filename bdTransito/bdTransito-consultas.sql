USE bdTransito
--a
SELECT COUNT (idMotorista) as 'Quantidade de Motoristas' FROM tbMotorista

--b
SELECT COUNT (idMotorista) as 'Quantidade de Motoristas com sobrenome Silva'  FROM tbMotorista
WHERE nomeMotorista LIKE '%Silva'

--c
SELECT COUNT (idMotorista) as 'Quantidade de Motoristas que nasceram no ano 2000'  FROM tbMotorista
WHERE YEAR (dataNascMotorista) = 2000

--d
SELECT COUNT (idMotorista) as 'Quantidade de Motoristas que possuim mais de 10�pontos'  FROM tbMotorista
WHERE(pontuacaoAcumuladaMotorista) > 10

--e
SELECT SUM (pontuacaoAcumuladaMotorista)as 'Som�t�ria dos pontos acumulados' FROM tbMotorista

--f
SELECT AVG (pontuacaoAcumuladaMotorista)as 'M�dia dos pontos acumulados' FROM tbMotorista

--g
SELECT COUNT (idVeiculo) as 'Quantos veiculos motorista 1 tem' FROM tbVeiculo
WHERE idMotorista = 1

--h
SELECT COUNT (idVeiculo) as 'Quantos veiculos a placa come�a com A' FROM tbVeiculo
WHERE placaVeiculo LIKE 'A%'

--i
SELECT COUNT (idVeiculo) as 'Quantos veiculos foram fabricados antes de 2010' FROM tbVeiculo
WHERE (anoVeiculo) < 2010

--j
SELECT AVG (anoVeiculo) as 'Media do ano de fabrica��o dos veiculos' FROM tbVeiculo

--k
SELECT COUNT (idVeiculo) as 'Quantidades de veiculos que possui Sedan no nome do modelo' FROM tbVeiculo
WHERE (modeloVeiculo) LIKE '%Sedan%'

--l
SELECT SUM (pontosMulta) as 'Somat�ria dos pontos do motorista de id do veiculo 2' FROM tbMulta
WHERE (idVeiculo) = 2


--m
SELECT AVG (pontosMulta) as 'M�dia de pontosMulta entre todas as multas aplicadas' FROM tbMulta

--n
SELECT COUNT (idMulta) as 'A quantidade de multas aplicadas no m�s de abril de 2018' FROM tbMulta
WHERE MONTH(dataMulta) = 4 AND YEAR(dataMulta) = 2018

--o
SELECT COUNT (idVeiculo) as 'A quantidade de veiculos cuja placa termine com o numero 1 ou 2' FROM tbVeiculo
WHERE (placaVeiculo) LIKE '%1' OR (placaVeiculo) LIKE '%2'

--p
SELECT COUNT (idVeiculo) as 'A quantidade de veiculos cuja placa termine com o numero 3 ou 4' FROM tbVeiculo
WHERE (placaVeiculo) LIKE '%3' OR (placaVeiculo) LIKE '%4'

--q
SELECT COUNT (idVeiculo) as 'A quantidade de veiculos cuja placa termine com o numero 5 ou 6' FROM tbVeiculo
WHERE (placaVeiculo) LIKE '%5' OR (placaVeiculo) LIKE '%6'

--r
SELECT COUNT (idVeiculo) as 'A quantidade de veiculos cuja placa termine com o numero 7 ou 8' FROM tbVeiculo
WHERE (placaVeiculo) LIKE '%7' OR (placaVeiculo) LIKE '%8'

--s
SELECT COUNT (idVeiculo) as 'A quantidade de veiculos cuja placa termine com o numero 9 ou 0' FROM tbVeiculo
WHERE (placaVeiculo) LIKE '%9' OR (placaVeiculo) LIKE '%0'

--t
SELECT COUNT (idVeiculo)as 'Quantidade de veiculos por ano de fabrica��o', anoVeiculo FROM tbVeiculo
GROUP BY anoVeiculo

--u
SELECT COUNT (idMotorista)as 'A quantidade de motoristas por pontua��o acumulada' FROM tbMotorista 
GROUP BY pontuacaoAcumuladaMotorista

--v
SELECT COUNT (idMotorista)as 'Quantidade de motoristas que ultrapassam 20 pontos'FROM tbMotorista 
WHERE pontuacaoAcumuladaMotorista > 20

--w
SELECT AVG (pontuacaoAcumuladaMotorista) as 'A pontua��o m�dia dos motoristas nascidos em 2000' FROM tbMotorista 
WHERE YEAR (dataNascMotorista) = 2000

--x
SELECT AVG (pontosMulta)as'A m�dia dos pontos das multas aplicadas em julho de 2017' FROM tbMulta
WHERE MONTH (dataMulta) = 7 AND YEAR (dataMulta) = 2017

--y
SELECT COUNT (idVeiculo) as 'Quantos veiculos n�o podem circular na segunda feira (placa final 1 ou 2)' FROM tbVeiculo
WHERE (placaVeiculo) LIKE '%1' OR (placaVeiculo) LIKE '%2'
