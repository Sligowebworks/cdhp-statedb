USE CDHPState
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'expendituresChartA1')
    DROP VIEW expendituresChartA1
GO

CREATE VIEW expendituresChartA1
AS 
	SELECT [State]= state, phce98mil
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'expendituresChartA2')
    DROP VIEW  expendituresChartA2
GO

CREATE VIEW expendituresChartA2
AS 
	SELECT [State]= state, aveannpercgrphce8098
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'expendituresChartA3')
    DROP VIEW  expendituresChartA3
GO

CREATE VIEW expendituresChartA3
AS 
	SELECT [State]= state, annpercgrphce98
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'expendituresChartA4')
    DROP VIEW expendituresChartA4
GO

CREATE VIEW expendituresChartA4
AS 
	SELECT [State]= state, phceden98mil
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'expendituresChartA5')
    DROP VIEW expendituresChartA5
GO

CREATE VIEW expendituresChartA5
AS 
	SELECT [State]= state, percpchedensvc98
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'expendituresChartA6')
    DROP VIEW expendituresChartA6
GO

CREATE VIEW expendituresChartA6
AS 
	SELECT [State]= state, aveannpercgrphcedensvc8098
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'expendituresChartA7')
    DROP VIEW expendituresChartA7
GO

CREATE VIEW expendituresChartA7
AS 
	SELECT [State]= state, Annpercgrphcedensvc98
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~
