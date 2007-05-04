USE CDHPState
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartC1')
    DROP VIEW medischipChartC1
GO

CREATE VIEW medischipChartC1
AS 
	SELECT [State]= state, percdenchip2000
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartC1 TO dbo

GRANT SELECT ON CDHPDE.medischipChartC1 TO public




IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartC2')
    DROP VIEW medischipChartC2
GO

CREATE VIEW medischipChartC2
AS 
	SELECT [State]= state, percdenchip2001
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartC2 TO dbo

GRANT SELECT ON CDHPDE.medischipChartC2 TO public


IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartC3')
    DROP VIEW medischipChartC3
GO

CREATE VIEW medischipChartC3
AS 
	SELECT [State]= state, totnumactden98
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartC3 TO dbo

GRANT SELECT ON CDHPDE.medischipChartC3 TO public



IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartC4')
    DROP VIEW medischipChartC4
GO

CREATE VIEW medischipChartC4
AS 
	SELECT [State]= state, percdenmedi2000
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartC4 TO dbo

GRANT SELECT ON CDHPDE.medischipChartC4 TO public



IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartC5')
    DROP VIEW medischipChartC5
GO

CREATE VIEW medischipChartC5
AS 
	SELECT [State]= state, percdenmedi2001
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartC5 TO dbo

GRANT SELECT ON CDHPDE.medischipChartC5 TO public


IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartC6')
    DROP VIEW medischipChartC6
GO

CREATE VIEW medischipChartC6
AS 
	SELECT [State]= state, numdenmedi1998
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartC6 TO dbo

GRANT SELECT ON CDHPDE.medischipChartC6 TO public



IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartC7')
    DROP VIEW medischipChartC7
GO

CREATE VIEW medischipChartC7
AS 
	SELECT [State]= state, percactdenenrmedi98
	FROM medischip3
GO

GRANT ALL ON CDHPDE.medischipChartC7 TO dbo

GRANT SELECT ON CDHPDE.medischipChartC7 TO public







