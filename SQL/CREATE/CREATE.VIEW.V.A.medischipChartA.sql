USE CDHPState
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartA1')
    DROP VIEW medischipChartA1
GO

CREATE VIEW medischipChartA1
AS 
	SELECT [State]= state, medelich2002, medelichproj2001
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartA1 TO dbo

GRANT SELECT ON CDHPDE.medischipChartA1 TO public



IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartA2')
    DROP VIEW medischipChartA2
GO

CREATE VIEW medischipChartA2
AS 
	SELECT [State]= state, medelichproj2001
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartA2 TO dbo

GRANT SELECT ON CDHPDE.medischipChartA2 TO public



IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartA3')
    DROP VIEW medischipChartA3
GO

CREATE VIEW medischipChartA3
AS 
	SELECT [State]= state, chipenrdec2001, chipenrdec2000
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartA3 TO dbo

GRANT SELECT ON CDHPDE.medischipChartA3 TO public



IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartA4')
    DROP VIEW medischipChartA4
GO

CREATE VIEW medischipChartA4
AS 
	SELECT [State]= state, numchenr2001
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartA4 TO dbo

GRANT SELECT ON CDHPDE.medischipChartA4 TO public