
USE CDHPState
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartE1a')
    DROP VIEW workforceChartE1a
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartE1b')
    DROP VIEW workforceChartE1b
GO

/*IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartE1c')
    DROP VIEW workforceChartE1c*/
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartE1d')
    DROP VIEW workforceChartE1d
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartE1e')
    DROP VIEW workforceChartE1e
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartE1f')
    DROP VIEW workforceChartE1f
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartE1g')
    DROP VIEW workforceChartE1g
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartE1h')
    DROP VIEW workforceChartE1h
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartE1i')
    DROP VIEW workforceChartE1i
GO

CREATE VIEW workforceChartE1a
AS 
	SELECT [State]= F1, projasst08
	FROM workforce
GO

CREATE VIEW workforceChartE1b
AS 
	SELECT [State]= F1, numasst98, numasst298
	FROM workforce
GO

CREATE VIEW workforceChartE1d
AS 
	SELECT [State]= F1, asstperdent98
	FROM workforce
GO

CREATE VIEW workforceChartE1e
AS 
	SELECT [State]= F1, asstper100kpop98
	FROM workforce
GO

CREATE VIEW workforceChartE1f
AS 
	SELECT [State]= F1, numasstedprog04, numasstedprog03, numasstedprog02, numasstedprog01, numasstedprog00
	FROM workforce
GO

CREATE VIEW workforceChartE1g
AS 
	SELECT [State]= F1, chgasstgrad85869596
	FROM workforce
GO

CREATE VIEW workforceChartE1h
AS 
	SELECT [State]= F1, chgpop858695961
	FROM workforce
GO

CREATE VIEW workforceChartE1i
AS 
	SELECT [State]= F1, chgasstper100kpop85869596
	FROM workforce
GO

