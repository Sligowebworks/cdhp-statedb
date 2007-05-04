USE [CDHPState]
GO

IF EXISTS (
	SELECT * FROM dbo.sysobjects 
	WHERE ID = object_id(N'[dbo].[workforceChartB]') 
	AND OBJECTPROPERTY(id, N'IsView') = 1
)
DROP VIEW [dbo].[workforceChartB]
GO

CREATE VIEW workforceChartB
AS 
	SELECT [State] = 'US' 
	, workforce.femaledent98 , nonhispwhden, blackden
	, hispden, asianden, indianden
	FROM workforceus INNER JOIN workforce on f1 = 'US'

GO
/*
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[workforceChartB1]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[workforceChartB1]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[workforceChartB2]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[workforceChartB2]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[workforceChartB3]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[workforceChartB3]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[workforceChartB4]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[workforceChartB4]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[workforceChartB5]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[workforceChartB5]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[workforceChartB6]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[workforceChartB6]
GO

*/

/*
CREATE VIEW workforceChartB2
AS 
	SELECT [State] = 'US', nonhispwhden
	FROM workforceus
*/
GO
/*
CREATE VIEW workforceChartB3
AS 
	SELECT [State] = 'US', blackden
	FROM workforceus
*/
GO
/*
CREATE VIEW workforceChartB4
AS 
	SELECT [State] = 'US', hispden
	FROM workforceus
*/
GO
/*
CREATE VIEW workforceChartB5
AS 
	SELECT [State] = 'US', asianden
	FROM workforceus
*/
GO
/*
CREATE VIEW workforceChartB6
AS 
	SELECT [State] = 'US', indianden
	FROM workforceus
*/
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


