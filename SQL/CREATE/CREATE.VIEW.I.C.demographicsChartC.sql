USE [CDHPState]
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~ 

IF EXISTS (
	SELECT * FROM dbo.sysobjects 
	WHERE ID = OBJECT_ID(N'[demographicsChartC1]') 
	AND OBJECTPROPERTY(ID, N'ISVIEW') = 1
) 
DROP VIEW [demographicsChartC1]
GO

CREATE VIEW demographicsChartC1
AS 
	SELECT [State] = f1, whiteunder1800
	FROM demographics
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~ 

IF EXISTS (
	SELECT * FROM dbo.sysobjects 
	WHERE ID = OBJECT_ID(N'[demographicsChartC2]') 
	AND OBJECTPROPERTY(ID, N'ISVIEW') = 1
) 
DROP VIEW [demographicsChartC2]
GO

CREATE VIEW demographicsChartC2
AS 
	SELECT [State] = f1, blackunder1800
	FROM demographics
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~ 

IF EXISTS (
	SELECT * FROM dbo.sysobjects 
	WHERE ID = OBJECT_ID(N'[demographicsChartC3]') 
	AND OBJECTPROPERTY(ID, N'ISVIEW') = 1
) 
DROP VIEW [demographicsChartC3]
GO

CREATE VIEW demographicsChartC3
AS 
	SELECT [State] = f1, asianunder1800
	FROM demographics
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~ 

IF EXISTS (
	SELECT * FROM dbo.sysobjects 
	WHERE ID = OBJECT_ID(N'[demographicsChartC4]') 
	AND OBJECTPROPERTY(ID, N'ISVIEW') = 1
) 
DROP VIEW [demographicsChartC4]
GO

CREATE VIEW demographicsChartC4
AS 
	SELECT [State] = f1, amindunder1800
	FROM demographics
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~ 

IF EXISTS (
	SELECT * FROM dbo.sysobjects 
	WHERE ID = OBJECT_ID(N'[demographicsChartC5]') 
	AND OBJECTPROPERTY(ID, N'ISVIEW') = 1
) 
DROP VIEW [demographicsChartC5]
GO

CREATE VIEW demographicsChartC5
AS 
	SELECT [State] = f1, otherunder1800
	FROM demographics
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~ 

IF EXISTS (
	SELECT * FROM dbo.sysobjects 
	WHERE ID = OBJECT_ID(N'[demographicsChartC6]') 
	AND OBJECTPROPERTY(ID, N'ISVIEW') = 1
) 
DROP VIEW [demographicsChartC6]
GO

CREATE VIEW demographicsChartC6
AS 
	SELECT [State] = f1, multiunder1800
	FROM demographics
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~ 

IF EXISTS (
	SELECT * FROM dbo.sysobjects 
	WHERE ID = OBJECT_ID(N'[demographicsChartC7]') 
	AND OBJECTPROPERTY(ID, N'ISVIEW') = 1
) 
DROP VIEW [demographicsChartC7]
GO

CREATE VIEW demographicsChartC7
AS 
	SELECT [State] = f1, hispunder1800
	FROM demographics
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~ 


/*
CREATE VIEW demographicsChartC1
AS 
	SELECT [State] = f1, whiteunder1800, blackunder1800, asianunder1800, amindunder1800, otherunder1800, multiunder1800, hispunder1800
	FROM demographics

*/--GO
/*--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (
	SELECT * FROM dbo.sysobjects 
	WHERE ID = OBJECT_ID(N'[demographicsChartC2]') 
	AND OBJECTPROPERTY(ID, N'ISVIEW') = 1
)
DROP VIEW [demographicsChartC2]
*/--GO
/*

CREATE VIEW demographicsChartC2
AS 
	SELECT [State] = f1, whiteunder1801, blackunder1801, asianunder1801, amindunder1801, otherunder1801, multiunder1801, hispunder1801
	FROM demographics
*/--GO
/*--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (
	SELECT * FROM dbo.sysobjects 
	WHERE ID = OBJECT_ID(N'[demographicsChartC3]') 
	AND OBJECTPROPERTY(ID, N'ISVIEW') = 1
)
DROP VIEW [demographicsChartC3]
*/--GO
/*

CREATE VIEW demographicsChartC3
AS 
	SELECT [State] = f1, whiteunder1802, blackunder1802, asianunder1802, amindunder1802, otherunder1802, multiunder1802, hispunder1802
	FROM demographics
*/--GO
/*--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (
	SELECT * FROM dbo.sysobjects 
	WHERE ID = OBJECT_ID(N'[demographicsChartC4]') 
	AND OBJECTPROPERTY(ID, N'ISVIEW') = 1
)
DROP VIEW [demographicsChartC4]
*/--GO
/*

CREATE VIEW demographicsChartC4
AS 
	SELECT [State] = f1, whiteunder1803, blackunder1803, asianunder1803, amindunder1803, otherunder1803, multiunder1803, hispunder1803
	FROM demographics
*/--GO
/*--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (
	SELECT * FROM dbo.sysobjects 
	WHERE ID = OBJECT_ID(N'[demographicsChartC5]') 
	AND OBJECTPROPERTY(ID, N'ISVIEW') = 1
)
DROP VIEW [demographicsChartC5]
*/--GO
/*

CREATE VIEW demographicsChartC5
AS 
	SELECT [State] = f1, whiteunder1804, blackunder1804, asianunder1804, amindunder1804, otherunder1804, multiunder1804, hispunder1804
	FROM demographics
*/--GO/*--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~