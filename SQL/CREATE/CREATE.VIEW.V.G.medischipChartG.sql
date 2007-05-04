USE CDHPState
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartG1')
    DROP VIEW medischipChartG1
GO

CREATE VIEW medischipChartG1
AS 
	SELECT [State]= state, aaps98projprev021medu
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartG2')
    DROP VIEW medischipChartG2
GO

CREATE VIEW medischipChartG2
AS 
	SELECT [State]= state, aaps98projprev021medr
	FROM medischip3
GO --,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartG3')
    DROP VIEW medischipChartG3
GO 

CREATE VIEW medischipChartG3
AS 
	SELECT [State]= state, aaps98projprev021denu
	FROM medischip3
GO --,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartG4')
    DROP VIEW medischipChartG4
GO

CREATE VIEW medischipChartG4
AS 
	SELECT [State]= state, aaps98projprev021denr
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartG5')
    DROP VIEW medischipChartG5
GO

CREATE VIEW medischipChartG5
AS 
	SELECT [State]= state, aaps98projprev021totu
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'medischipChartG6')
    DROP VIEW medischipChartG6
GO

CREATE VIEW medischipChartG6
AS 
	SELECT [State]= state, aaps98projprev021totr
	FROM medischip3
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~