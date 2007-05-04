
USE CDHPState
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'workforceChartE3a')
    DROP VIEW workforceChartE3a
GO

CREATE VIEW workforceChartE3a
AS 
	SELECT [State]= F1, denbdreqasst01
	FROM workforce
GO
