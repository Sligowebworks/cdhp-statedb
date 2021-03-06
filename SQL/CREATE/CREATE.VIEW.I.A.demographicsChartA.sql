USE CDHPState
GO

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE ID = object_id(N'[dbo].[demographicsChartA]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[demographicsChartA]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE VIEW demographicsChartA
AS 
	SELECT [State] = F1, tpop04, tpop03, tpop02, tpop01, tpop00 
	FROM demographics

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

