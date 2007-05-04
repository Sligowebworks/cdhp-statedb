USE CDHPState
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'expendituresChartC1')
    DROP VIEW expendituresChartC1
GO

CREATE VIEW expendituresChartC1
AS 
	SELECT [State]= state, phcemedi98mil
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'expendituresChartC2')
    DROP VIEW expendituresChartC2
GO

CREATE VIEW expendituresChartC2
AS 
	SELECT [State]= state, aveannpercgrphcemedi8098
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'expendituresChartC3')
    DROP VIEW expendituresChartC3
GO

CREATE VIEW expendituresChartC3
AS 
	SELECT [State]= state, annpercgrmediphce98
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'expendituresChartC4')
    DROP VIEW expendituresChartC4
GO

CREATE VIEW expendituresChartC4
AS 
	SELECT [State]= state, phce98meddensvcmil
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'expendituresChartC5')
    DROP VIEW expendituresChartC5
GO

CREATE VIEW expendituresChartC5
AS 
	SELECT [State]= state, percmedipchedensvs98
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'expendituresChartC6')
    DROP VIEW expendituresChartC6
GO

CREATE VIEW expendituresChartC6
AS 
	SELECT [State]= state, aveannpercgrphcedenscvmedi8098
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'expendituresChartC7')
    DROP VIEW expendituresChartC7
GO

CREATE VIEW expendituresChartC7
AS 
	SELECT [State]= state, annpercgrphcedensvcmedi98
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'expendituresChartC8')
    DROP VIEW expendituresChartC8
GO

CREATE VIEW expendituresChartC8
AS 
	SELECT [State]= state, allmedienroll98
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~