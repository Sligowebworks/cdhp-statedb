USE [CDHPState]
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC1a')
    DROP VIEW workforceChartC1a
GO

CREATE VIEW workforceChartC1a
AS 
	SELECT [State]= f1, dentsch04, dentsch03, dentsch02, dentsch01, dentsch00
 	FROM workforce
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC1b')
    DROP VIEW workforceChartC1b
GO

CREATE VIEW workforceChartC1b
AS 
	SELECT [State]= f1, dentstenr9697
 	FROM workforce
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC1c')
    DROP VIEW workforceChartC1c
GO

CREATE VIEW workforceChartC1c
AS 
	SELECT [State]= f1, dentsten100k9697
 	FROM workforce
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC1d')
    DROP VIEW workforceChartC1d
GO

CREATE VIEW workforceChartC1d
AS 
	SELECT [State]= f1, dentgrad9596
 	FROM workforce
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC1e')
    DROP VIEW workforceChartC1e
GO

CREATE VIEW workforceChartC1e
AS 
	SELECT [State]= f1, dentgrad100k9596
 	FROM workforce
GO

