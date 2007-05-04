
USE CDHPState
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartD2a')
    DROP VIEW workforceChartD2a
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartD2b')
    DROP VIEW workforceChartD2b
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartD2c')
    DROP VIEW workforceChartD2c
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartD2d')
    DROP VIEW workforceChartD2d
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartD2e')
    DROP VIEW workforceChartD2e
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartD2f')
    DROP VIEW workforceChartD2f
GO

CREATE VIEW workforceChartD2a
AS 
	SELECT [State]= F1, hygprog02
	FROM workforce
GO

CREATE VIEW workforceChartD2b
AS 
	SELECT [State]= F1, hyg98
	FROM workforce
GO

CREATE VIEW workforceChartD2c
AS 
	SELECT [State]= F1, msdhygprogs02
	FROM workforce
GO

CREATE VIEW workforceChartD2d
AS 
	SELECT [State]= F1, chghyggrad85869596
	FROM workforce
GO

CREATE VIEW workforceChartD2e
AS 
	SELECT [State]= F1, chgpop85869596
	FROM workforce
GO

CREATE VIEW workforceChartD2f
AS 
	SELECT [State]= F1, percchghyggradper100kpop85869596
	FROM workforce
GO
