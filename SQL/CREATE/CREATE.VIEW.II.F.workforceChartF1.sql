
USE CDHPState
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartF1a')
    DROP VIEW workforceChartF1a
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartF1b')
    DROP VIEW workforceChartF1b
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartF1c')
    DROP VIEW workforceChartF1c
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartF1d')
    DROP VIEW workforceChartF1d
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartF1e')
    DROP VIEW workforceChartF1e
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartF1f')
    DROP VIEW workforceChartF1f
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartF1g')
    DROP VIEW workforceChartF1g
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartF1h')
    DROP VIEW workforceChartF1h
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartF1i')
    DROP VIEW workforceChartF1i
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartF1j')
    DROP VIEW workforceChartF1j
GO

CREATE VIEW workforceChartF1a
AS 
	SELECT [State]= F1, numallosch01
	FROM workforce
GO

CREATE VIEW workforceChartF1b
AS 
	SELECT [State]= F1, numosteosch01
	FROM workforce
GO

CREATE VIEW workforceChartF1c
AS 
	SELECT [State]= F1, numactiveosteophys01
	FROM workforce
GO

CREATE VIEW workforceChartF1d
AS 
	SELECT [State]= F1, numosteoschgrad9899
	FROM workforce
GO

CREATE VIEW workforceChartF1e
AS 
	SELECT [State]= F1, numosteoschgrad9900
	FROM workforce
GO

CREATE VIEW workforceChartF1f
AS 
	SELECT [State]= F1, numnonfedped98
	FROM workforce
GO

CREATE VIEW workforceChartF1g
AS 
	SELECT [State]= F1, numgenpeddir98
	FROM workforce
GO

CREATE VIEW workforceChartF1h
AS 
	SELECT [State]= F1, numfpgpdir98
	FROM workforce
GO

CREATE VIEW workforceChartF1i
AS 
	SELECT [State]= F1, numchnurselic00
	FROM workforce
GO

CREATE VIEW workforceChartF1j
AS 
	SELECT [State]= F1, numnonfedfamdir99
	FROM workforce
GO