
USE CDHPState
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartD1a')
    DROP VIEW workforceChartD1a
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartD1b')
    DROP VIEW workforceChartD1b
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartD1c')
    DROP VIEW workforceChartD1c
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartD1d')
    DROP VIEW workforceChartD1d
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartD1e')
    DROP VIEW workforceChartD1e
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartD1f')
    DROP VIEW workforceChartD1f
GO

CREATE VIEW workforceChartD1a
AS 
	SELECT [State]= F1, projhyg08
	FROM workforce
GO

CREATE VIEW workforceChartD1b
AS 
	SELECT [State]= F1, numlichyg04, numlichyg03, numlichyg02, numlichyg01, numlichyg00
	FROM workforce
GO

CREATE VIEW workforceChartD1c
AS 
	SELECT [State]= F1, numhyg98
	FROM workforce
GO

CREATE VIEW workforceChartD1d
AS 
	SELECT [State]= F1, numhyg298
	FROM workforce
GO

CREATE VIEW workforceChartD1e
AS 
	SELECT [State]= F1, hygperdent98
	FROM workforce
GO

CREATE VIEW workforceChartD1f
AS 
	SELECT [State]= F1, hygper100kpop98
	FROM workforce
GO