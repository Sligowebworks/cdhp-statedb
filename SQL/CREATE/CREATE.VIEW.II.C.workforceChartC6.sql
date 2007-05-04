USE [CDHPState]
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC6a')
    DROP VIEW workforceChartC6a
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC6b')
    DROP VIEW workforceChartC6b
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC6c')
    DROP VIEW workforceChartC6c
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC6d')
    DROP VIEW workforceChartC6d
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC6e')
    DROP VIEW workforceChartC6e
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC6f')
    DROP VIEW workforceChartC6f
GO

CREATE VIEW workforceChartC6a
AS 
	SELECT [State]= f1, genpracres1202
 	FROM workforce
GO

CREATE VIEW workforceChartC6b
AS 
	SELECT [State]= f1, genpracres2402
 	FROM workforce
GO

CREATE VIEW workforceChartC6c
AS 
	SELECT [State]= f1, advgendentres1202
 	FROM workforce
GO

CREATE VIEW workforceChartC6d
AS 
	SELECT [State]= f1, advgendentres2402
 	FROM workforce
GO

CREATE VIEW workforceChartC6e
AS 
	SELECT [State]= f1, peddentres02
 	FROM workforce
GO

CREATE VIEW workforceChartC6f
AS 
	SELECT [State]= f1, denpubheares02
 	FROM workforce
GO