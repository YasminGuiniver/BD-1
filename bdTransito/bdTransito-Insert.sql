USE bdTransito

INSERT tbMotorista (nomeMotorista, dataNascMotorista, cpfMotorista, CNHMotorista, pontuacaoAcumuladaMotorista)
VALUES ('Rodrigo Vieira da Silva', '03/09/1987', '111.111.111-11', '111111111', 20) ---arrumar pontos--deletar dps
	, ('Rafaela Santana Lima', '06/02/2000', '222.222.222-22', '22222222', 15)
	, ('Ana Carolina Mendonça', '11/05/1995', '333.333.333-33', '333333', 5)

SELECT idMotorista, nomeMotorista, dataNascMotorista, cpfMotorista, CNHMotorista, pontuacaoAcumuladaMotorista FROM tbMotorista


INSERT tbVeiculo (modeloVeiculo, placaVeiculo, renavamVeiculo, anoVeiculo, idMotorista)
VALUES ('KADETT SL', 'ABC-3434', '11111111111', '1990', 1 )
	, ('NOVA SAVEIRO CE CROOS', 'JKL-2322', '22222222222', '2013', 1)
	, ('ECOSPORT XLS 1.6L', 'DJO-1308', '33333333333', '2004', 1)
	, ('FUSCA', 'AGG-2001', '4444444444', '1986', 2)
	, ('TUCSON TURBO', 'REG-0706', '55555555555', '2020', 2)
	, ('UNO MILLE FIRE FLEX', 'HAR-2764', '66666666666', '2006', 2)
	, ('GOLF', 'JJV-6368', '77777777777', '2013', 3)
	, ('FIESTA', 'OOH-5373', '88888888888', '2014', 3)
	, ('PALIO', 'GUP-4248', '99999999999', '2012', 3)

SELECT idVeiculo, modeloVeiculo,placaVeiculo,renavamVeiculo, anoVeiculo, idMotorista FROM tbVeiculo


INSERT tbMulta(dataMulta, horaMulta, pontosMulta, idVeiculo)
VALUES ('01/02/1999', '21:30:00', 3, 1)
	, ('03/04/2001', '12:35:00', 2, 1)
	, ('05/03/2014', '18:45:00', 5, 2)
	, ('06/04/2018', '13:34:00', 2, 2)
	, ('09/02/2009', '12:23:00', 4, 3)
	, ('08/03/2009', '14:02:00', 5, 3)
	, ('03/03/1990', '12:12:00', 3, 4)
	, ('04/03/1991', '19:09:00', 5, 4)
	, ('02/04/2020', '20:00:00', 3, 5)
	, ('03/04/2020', '21:00:00', 5, 5)
	, ('02/06/2008', '18:34:00', 4, 6)
	, ('06/07/2009', '15:12:00', 3, 6)
	, ('07/07/2017', '17:30:00', 1, 7)
	, ('03/07/2017', '16:12:00', 2, 7)
	, ('05/04/2018', '12:15:00', 3, 8)
	, ('07/05/2016', '13:30:00', 2, 8)
	, ('08/02/2015', '15:30:00', 3, 9)
	, ('02/09/2016', '17:45:00', 4, 9)

SELECT dataMulta, horaMulta, pontosMulta, idVeiculo FROM tbMulta