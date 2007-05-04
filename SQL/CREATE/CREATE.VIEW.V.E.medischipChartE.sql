USE CDHPState
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartE1')
    DROP VIEW medischipChartE1
GO

CREATE VIEW medischipChartE1
AS 
	SELECT [State]= state, medivenpaytyp98tot
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartE1 TO dbo

GRANT SELECT ON CDHPDE.medischipChartE1 TO public




IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartE2')
    DROP VIEW medischipChartE2
GO

CREATE VIEW medischipChartE2
AS 
	SELECT [State]= state, medivenpaytyp98densvc
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartE2 TO dbo

GRANT SELECT ON CDHPDE.medischipChartE2 TO public







