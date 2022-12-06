CREATE DATABASE bdTransito

USE bdTransito

CREATE TABLE tbMotorista(
	idMotorista INT PRIMARY KEY IDENTITY(1,1)
	 , nomeMotorista  VARCHAR(50) NOT NULL
	 , dataNascMotorista SMALLDATETIME NOT NULL
	 , cpfMotorista CHAR(14) NOT NULL
	 , CNHMotorista VARCHAR(15) NOT NULL
	 , pontuacaoAcumuladaMotorista INT NOT NULL
)

CREATE TABLE tbVeiculo(
	idVeiculo INT PRIMARY KEY IDENTITY(1,1)
	, modeloVeiculo VARCHAR(50) NOT NULL
	, placaVeiculo VARCHAR(50) NOT NULL
	, renavamVeiculo VARCHAR(11) NOT NULL
	, anoVeiculo INT NOT NULL
	, idMotorista INT FOREIGN KEY REFERENCES tbMotorista(idMotorista)
)

CREATE TABLE tbMulta(
	idMulta INT PRIMARY KEY IDENTITY(1,1)
	, dataMulta SMALLDATETIME NOT NULL
	, horaMulta TIME NOT NULL
	, pontosMulta INT NOT NULL
	, idVeiculo INT FOREIGN KEY REFERENCES tbVeiculo(idVeiculo)
)