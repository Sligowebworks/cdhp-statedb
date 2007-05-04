USE CDHPState
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartD1')
    DROP VIEW medischipChartD1
GO

CREATE VIEW medischipChartD1
AS 
	SELECT [State]= state, numdenpaymedi98
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartD1 TO dbo

GRANT SELECT ON CDHPDE.medischipChartD1 TO public




IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartD2')
    DROP VIEW medischipChartD2
GO

CREATE VIEW medischipChartD2
AS 
	SELECT [State]= state, peractdenpaymedi98
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartD2 TO dbo

GRANT SELECT ON CDHPDE.medischipChartD2 TO public



IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartD3')
    DROP VIEW medischipChartD3
GO

CREATE VIEW medischipChartD3
AS 
	SELECT [State]= state, numdengr10kmedi98
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartD3 TO dbo

GRANT SELECT ON CDHPDE.medischipChartD3 TO public



IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartD4')
    DROP VIEW medischipChartD4
GO

CREATE VIEW medischipChartD4
AS 
	SELECT [State]= state, peractdengr10kmedi98
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartD4 TO dbo

GRANT SELECT ON CDHPDE.medischipChartD4 TO public



