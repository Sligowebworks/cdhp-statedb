
USE CDHPState
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartD4a')
    DROP VIEW workforceChartD4a
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartD4b')
    DROP VIEW workforceChartD4b
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartD4c')
    DROP VIEW workforceChartD4c
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartD4d')
    DROP VIEW workforceChartD4d
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartD4e')
    DROP VIEW workforceChartD4e
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartD4f')
    DROP VIEW workforceChartD4f
GO

CREATE VIEW workforceChartD4a
AS 
	SELECT [State]= F1, percfemhyggrad9697
	FROM workforce
GO

CREATE VIEW workforceChartD4b
AS 
	SELECT [State]= F1, percnonhispwhyggrad9697
	FROM workforce
GO

CREATE VIEW workforceChartD4c
AS 
	SELECT [State]= F1, percblackhyggrad9697
	FROM workforce
GO

CREATE VIEW workforceChartD4d
AS 
	SELECT [State]= F1, perchisphyggrad9697
	FROM workforce
GO

CREATE VIEW workforceChartD4e
AS 
	SELECT [State]= F1, percasianhyggrad9697
	FROM workforce
GO

CREATE VIEW workforceChartD4f
AS 
	SELECT [State]= F1, percamerindhyggrad9697
	FROM workforce
GO