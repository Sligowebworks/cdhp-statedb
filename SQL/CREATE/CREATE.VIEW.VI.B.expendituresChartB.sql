USE CDHPState
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'expendituresChartB1')
    DROP VIEW expendituresChartB1
GO

CREATE VIEW expendituresChartB1
AS 
	SELECT [State]= state, medienrollage98lt21
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'expendituresChartB2')
    DROP VIEW expendituresChartB2
GO

CREATE VIEW expendituresChartB2
AS 
	SELECT [State]= state, percmedienrolllt2198
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'expendituresChartB3')
    DROP VIEW expendituresChartB3
GO

CREATE VIEW expendituresChartB3
AS 
	SELECT [State]= state, percmedipaydensvclt2198
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'expendituresChartB4')
    DROP VIEW expendituresChartB4
GO

CREATE VIEW expendituresChartB4
AS 
	SELECT [State]= state, avemedipayperchlt21densvc98
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'expendituresChartB5')
    DROP VIEW expendituresChartB5
GO

CREATE VIEW expendituresChartB5
AS 
	SELECT [State]= state, percmedienrolllt21densvc98
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~