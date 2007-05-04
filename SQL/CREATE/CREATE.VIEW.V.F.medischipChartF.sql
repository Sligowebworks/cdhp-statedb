USE CDHPState
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartF1')
    DROP VIEW medischipChartF1
GO

CREATE VIEW medischipChartF1
AS 
	SELECT [State]= state, medirecipage98tot
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartF1 TO dbo

GRANT SELECT ON CDHPDE.medischipChartF1 TO public




IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartF2')
    DROP VIEW medischipChartF2
GO

CREATE VIEW medischipChartF2
AS 
	SELECT [State]= state, medirecipage98lt1
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartF2 TO dbo

GRANT SELECT ON CDHPDE.medischipChartF2 TO public




IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartF3')
    DROP VIEW medischipChartF3
GO

CREATE VIEW medischipChartF3
AS 
	SELECT [State]= state, medirecipage9815
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartF3 TO dbo

GRANT SELECT ON CDHPDE.medischipChartF3 TO public





IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartF4')
    DROP VIEW medischipChartF4
GO

CREATE VIEW medischipChartF4
AS 
	SELECT [State]= state, medirecipage98614
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartF4 TO dbo

GRANT SELECT ON CDHPDE.medischipChartF4 TO public





IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartF5')
    DROP VIEW medischipChartF5
GO

CREATE VIEW medischipChartF5
AS 
	SELECT [State]= state, medirecipage981520
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartF5 TO dbo

GRANT SELECT ON CDHPDE.medischipChartF5 TO public




