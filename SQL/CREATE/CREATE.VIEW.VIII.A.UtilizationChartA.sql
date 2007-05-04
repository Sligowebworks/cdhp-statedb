USE CDHPState
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'UtilizationChartA1')
    DROP VIEW UtilizationChartA1
GO

CREATE VIEW UtilizationChartA1
AS 
	SELECT [State]= state, perpop18plden2002, perpop18plden1999
	FROM au
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'UtilizationChartA2')
    DROP VIEW UtilizationChartA2
GO

CREATE VIEW UtilizationChartA2
AS 
	SELECT [State]= state, perpop18plteecl2002, perpop18plteecl1999
	FROM au
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'UtilizationChartA3')
    DROP VIEW UtilizationChartA3
GO

CREATE VIEW UtilizationChartA3
AS 
	SELECT [State]= state, perpoplost6gum2002, perpoplost6gum1999
	FROM au
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'UtilizationChartA4')
    DROP VIEW UtilizationChartA4
GO

CREATE VIEW UtilizationChartA4
AS 
	SELECT [State]= state, perpop65pllostall2002, perpop65pllostall999
	FROM au
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'UtilizationChartA5')
    DROP VIEW UtilizationChartA5
GO

CREATE VIEW UtilizationChartA5
AS 
	SELECT [State]= state, peradden9597less15k2002, peradden9597less15k1999
	FROM au
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'UtilizationChartA6')
    DROP VIEW UtilizationChartA6
GO

CREATE VIEW UtilizationChartA6
AS 
	SELECT [State]= state, peradden95971525k2002, peradden95971525k1999
	FROM au
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'UtilizationChartA7')
    DROP VIEW UtilizationChartA7
GO

CREATE VIEW UtilizationChartA7
AS 
	SELECT [State]= state, peradden95972535k2002, peradden95972535k1999
	FROM au
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'UtilizationChartA8')
    DROP VIEW UtilizationChartA8
GO

CREATE VIEW UtilizationChartA8
AS 
	SELECT [State]= state, peradden95973550k2002, peradden95973550k1999
	FROM au
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'UtilizationChartA9')
    DROP VIEW UtilizationChartA9
GO

CREATE VIEW UtilizationChartA9
AS 
	SELECT [State]= state, peradden9597more50k2002, peradden9597more50k1999
	FROM au
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'UtilizationChartA10')
    DROP VIEW UtilizationChartA10
GO

CREATE VIEW UtilizationChartA10
AS 
	SELECT [State] =  state,  medcovadden2000
	FROM au
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~


IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'UtilizationChartA11')
    DROP VIEW UtilizationChartA11
GO

CREATE VIEW UtilizationChartA11
AS 
	SELECT [State] =  state,  percmedservdenchild1995,  percmedservdenadult1995
	FROM au
GO--,~`~