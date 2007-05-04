USE CDHPState
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[demographics1]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[demographics1]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE VIEW dbo.demographics1
AS
SELECT     
[State] = F1, 
[Total Population 2004] = tpop04, 
[Total Population 2003] = tpop03, 
[Total Population 2002] = tpop02, 
[Total Population 2001] = tpop01, 
[Total Population 2000] = tpop00
FROM         dbo.Demographics

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO