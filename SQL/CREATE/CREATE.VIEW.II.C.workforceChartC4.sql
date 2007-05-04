USE [CDHPState]
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC4a')
    DROP VIEW workforceChartC4a
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC4b')
    DROP VIEW workforceChartC4b
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC4c')
    DROP VIEW workforceChartC4c
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC4d')
    DROP VIEW workforceChartC4d
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC4e')
    DROP VIEW workforceChartC4e
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC4f')
    DROP VIEW workforceChartC4f
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC4g')
    DROP VIEW workforceChartC4g
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC4h')
    DROP VIEW workforceChartC4h
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC4i')
    DROP VIEW workforceChartC4i
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC4j')
    DROP VIEW workforceChartC4j
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC4k')
    DROP VIEW workforceChartC4k
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC4l')
    DROP VIEW workforceChartC4l
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC4m')
    DROP VIEW workforceChartC4m
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC4n')
    DROP VIEW workforceChartC4n
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC4o')
    DROP VIEW workforceChartC4o
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC4p')
    DROP VIEW workforceChartC4p
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC4q')
    DROP VIEW workforceChartC4q
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartC4r')
    DROP VIEW workforceChartC4r
GO

CREATE VIEW workforceChartC4a
AS 
	SELECT [State]= f1, whitemaledentgrad00
 	FROM workforce
GO

CREATE VIEW workforceChartC4b
AS 
	SELECT [State]= f1, whitefemdentgrad00
 	FROM workforce
GO

CREATE VIEW workforceChartC4c
AS 
	SELECT [State]= f1, whitedentgrad00
 	FROM workforce
GO

CREATE VIEW workforceChartC4d
AS 
	SELECT [State]= f1, blackdentgrad00
 	FROM workforce
GO

CREATE VIEW workforceChartC4e
AS 
	SELECT [State]= f1, blackfemdentgrad00
 	FROM workforce
GO

CREATE VIEW workforceChartC4f
AS 
	SELECT [State]= f1, blackdentgrad001
 	FROM workforce
GO

CREATE VIEW workforceChartC4g
AS 
	SELECT [State]= f1, malehispdentgrad00
 	FROM workforce
GO

CREATE VIEW workforceChartC4h
AS 
	SELECT [State]= f1, femhispdentgrad00
 	FROM workforce
GO

CREATE VIEW workforceChartC4i
AS 
	SELECT [State]= f1, hispdentgrad00
 	FROM workforce
GO

CREATE VIEW workforceChartC4j
AS 
	SELECT [State]= f1, natamdentgrad00
 	FROM workforce
GO

CREATE VIEW workforceChartC4k
AS 
	SELECT [State]= f1, femnatamdentgrad00
 	FROM workforce
GO

CREATE VIEW workforceChartC4l
AS 
	SELECT [State]= f1, natamdentgrad001
 	FROM workforce
GO

CREATE VIEW workforceChartC4m
AS 
	SELECT [State]= f1, maleasiandentgrad00
 	FROM workforce
GO

CREATE VIEW workforceChartC4n
AS 
	SELECT [State]= f1, femasiandentgrad00
 	FROM workforce
GO

CREATE VIEW workforceChartC4o
AS 
	SELECT [State]= f1, asiandentgrad00
 	FROM workforce
GO

CREATE VIEW workforceChartC4p
AS 
	SELECT [State]= f1, unspecmale00
 	FROM workforce
GO

CREATE VIEW workforceChartC4q
AS 
	SELECT [State]= f1, unspecfem00
 	FROM workforce
GO

CREATE VIEW workforceChartC4r
AS 
	SELECT [State]= f1, total00
 	FROM workforce
GO

