USE CDHPState
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartB1')
    DROP VIEW medischipChartB1
GO

CREATE VIEW medischipChartB1
AS 
	SELECT [State]= state, progtype2001
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartB1 TO dbo

GRANT SELECT ON CDHPDE.medischipChartB1 TO public



IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartB2')
    DROP VIEW medischipChartB2
GO

CREATE VIEW medischipChartB2
AS 
	SELECT [State]= state--, XXX !!!DATA MISSING DID NOT RUN EVER CREATE THIS VIEW!!! XXX
	FROM medischip3
GO

--GRANT ALL ON CDHPDE.medischipChartB2 TO dbo

--GRANT SELECT ON CDHPDE.medischipChartB2 TO public



IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartB3')
    DROP VIEW medischipChartB3
GO

CREATE VIEW medischipChartB3
AS 
	SELECT [State]= state--, XXX !!! DATA MISSING
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartB3 TO dbo

GRANT SELECT ON CDHPDE.medischipChartB3 TO public




--DATA STILL MISSING ON MOST OF B CHART, YEARS DONT MATCH UP














