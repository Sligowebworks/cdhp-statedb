USE [CDHPState]
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE ID = OBJECT_ID(N'[dbo].[demographicschartb1]') AND OBJECTPROPERTY(ID, N'IsView') = 1)
DROP VIEW [demographicschartb1]
GO

CREATE VIEW demographicsChartB1
AS 
	SELECT [State] = f1, under1804, under1803, under1802, under1801, under1800
	FROM demographics

GO
--~~~

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[demographicsChartB2]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[demographicsChartB2]
GO

CREATE VIEW demographicsChartB2
AS 
	SELECT [State] = f1, under504,under503,under502,under501,under500
	FROM demographics

GO
--~~~

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[demographicsChartB3]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[demographicsChartB3]
GO

CREATE VIEW demographicsChartB3
AS 
	SELECT [State] = f1, fiveto904, fiveto903, fiveto902, fiveto901, fiveto900
	FROM demographics

GO
--~~~

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[demographicsChartB4]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[demographicsChartB4]
GO

CREATE VIEW demographicsChartB4
AS 
	SELECT [State] = f1, tento1404, tento14503, tento1402, tento1401, tento1400
	FROM demographics

GO
