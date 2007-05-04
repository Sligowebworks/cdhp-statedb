USE [CDHPState]
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE ID = object_id(N'[workforceChartA1]') AND OBJECTPROPERTY(ID, N'IsView') = 1)
DROP VIEW [workforceChartA1]
GO

CREATE VIEW workforceChartA1
AS 
	SELECT [State] = f1, projdent08
	FROM workforce
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE ID = object_id(N'[workforceChartA2]') AND OBJECTPROPERTY(ID, N'IsView') = 1)
DROP VIEW [workforceChartA2]
GO

CREATE VIEW workforceChartA2
AS 
	SELECT [State] = f1, licdent04, licdent03, licdent02, licdent01, licdent00
	FROM workforce
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE ID = object_id(N'[workforceChartA3]') AND OBJECTPROPERTY(ID, N'IsView') = 1)
DROP VIEW [workforceChartA3]
GO

CREATE VIEW workforceChartA3
AS 
	SELECT [State] = f1, dent99, dent98
	FROM workforce
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE ID = object_id(N'[workforceChartA4]') AND OBJECTPROPERTY(ID, N'IsView') = 1)
DROP VIEW [workforceChartA4]
GO

CREATE VIEW workforceChartA4
AS 
	SELECT [State] = f1, dent100k99, dent100k98
	FROM workforce
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE ID = object_id(N'[workforceChartA5]') AND OBJECTPROPERTY(ID, N'IsView') = 1)
DROP VIEW [workforceChartA5]
GO

CREATE VIEW workforceChartA5
AS 
	SELECT [State] = f1, chdent9198
	FROM workforce
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE ID = object_id(N'[workforceChartA6]') AND OBJECTPROPERTY(ID, N'IsView') = 1)
DROP VIEW [workforceChartA6]
GO

CREATE VIEW workforceChartA6
AS 
	SELECT [State] = f1, chpop9198
	FROM workforce
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE ID = object_id(N'[workforceChartA7]') AND OBJECTPROPERTY(ID, N'IsView') = 1)
DROP VIEW [workforceChartA7]
GO

CREATE VIEW workforceChartA7
AS 
	SELECT [State] = f1, cddent100k9198
	FROM workforce
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~