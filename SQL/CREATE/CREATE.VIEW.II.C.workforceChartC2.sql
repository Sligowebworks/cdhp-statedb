USE [CDHPState]
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC2a')
    DROP VIEW workforceChartC2a
GO

CREATE VIEW workforceChartC2a
AS 
	SELECT [State]= f1, femaledentgrad9697
 	FROM workforce
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC2b')
    DROP VIEW workforceChartC2b
GO

CREATE VIEW workforceChartC2b
AS 
	SELECT [State]= f1, nonhispwhdentgrad9697
 	FROM workforce
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC2c')
    DROP VIEW workforceChartC2c
GO

CREATE VIEW workforceChartC2c
AS 
	SELECT [State]= f1, blackdentgrad9697
 	FROM workforce
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC2d')
    DROP VIEW workforceChartC2d
GO

CREATE VIEW workforceChartC2d
AS 
	SELECT [State]= f1, hispdentgrad9697
 	FROM workforce
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC2e')
    DROP VIEW workforceChartC2e
GO

CREATE VIEW workforceChartC2e
AS 
	SELECT [State]= f1, asiandentgrad9697
 	FROM workforce
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC2f')
    DROP VIEW workforceChartC2f
GO

CREATE VIEW workforceChartC2f
AS 
	SELECT [State]= f1, indiandentgrad9697
 	FROM workforce
GO

