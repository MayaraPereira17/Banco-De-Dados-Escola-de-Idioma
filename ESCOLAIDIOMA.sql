CREATE DATABASE bdEscolaIdiomas


USE bdEscolaIdiomas



  CREATE TABLE tbAluno(
  idAluno INT PRIMARY KEY IDENTITY (1,1)
  ,nomeAluno VARCHAR (50) NOT NULL
  ,dataNascAluno SMALLDATETIME NOT NULL
	,rgAluno char (14) NOT NULL
	,naturalidadeAluno VARCHAR (2) NOT NULL
	)

	CREATE  TABLE tbCurso (
	idCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR (20)NOT NULL
	,cargahorariaCurso INT NOT NULL
	,valorCurso SMALLMONEY  NOT NULL
	)

	CREATE TABLE tbTurma(
	idTurma INT PRIMARY KEY IDENTITY (1,1)
	,nomeTurma VARCHAR (50) NOT NULL
	 ,horarioTurma SMALLDATETIME NOT NULL
	 ,idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso)
	 
	)
	CREATE TABLE  tbMatricula(
	idMatricula INT PRIMARY KEY IDENTITY (1,1)
	,dataMatricula SMALLDATETIME NOT NULL
	,idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma)
	)





