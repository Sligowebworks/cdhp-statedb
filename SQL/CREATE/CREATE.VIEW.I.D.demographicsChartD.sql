USE CDHPState
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[demographicsChartD1]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[demographicsChartD1]
GO

CREATE VIEW demographicsChartD1
AS 
	SELECT [State] = f1, povrateunder1904, povrateunder1903, povrateunder1902, povrateunder1901, povrateunder1900
 	FROM demographics

GO
--~~~

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[demographicsChartD2]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[demographicsChartD2]
GO

CREATE VIEW demographicsChartD2
AS 
	SELECT [State] = f1, percrelunder1804, percrelunder1803, percrelunder1802, percrelunder1801, percrelunder1800
   	FROM demographics

GO