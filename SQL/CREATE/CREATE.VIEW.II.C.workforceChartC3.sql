USE [CDHPState]
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC3')
    DROP VIEW workforceChartC3
GO

/*
IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC3a')
    DROP VIEW workforceChartC3a
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC3b')
    DROP VIEW workforceChartC3b
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC3c')
    DROP VIEW workforceChartC3c
GO
*/

CREATE VIEW workforceChartC3
AS 
	SELECT [State]= f1
	, chgdentgrad85869596, chpop85869596, chdentgrad100k85869596
 	FROM workforce
GO
/*
CREATE VIEW workforceChartC3a
AS 
	SELECT [State]= f1, chgdentgrad85869596
 	FROM workforce
GO

CREATE VIEW workforceChartC3b
AS 
	SELECT [State]= f1, chpop85869596
 	FROM workforce
GO

CREATE VIEW workforceChartC3c
AS 
	SELECT [State]= f1, chdentgrad100k85869596
 	FROM workforce
GO
*/