USE CDHPState
GO

DECLARE @Chart nvarchar(300)
DECLARE @Heading nvarchar(300)
DECLARE @Table nvarchar(50)
DECLARE @Sort int
--DECLARE @max int
DECLARE @View nvarchar(50)
DECLARE @Title nvarchar(150)

SET @Heading = 'Demographics'
SET @Title = 'Total Population'
SET @Chart = @Heading +  'Chart A'
SET @Table = 'demographics'
 
DELETE FROM tblCharts 
WHERE 
tblOfContentsChartName = @Chart
AND SourceTable = @Table

--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~
SET @Sort = 0

	SET @View = 'demographicsChartA'
	INSERT tblCharts (SQLView, SourceTable, tblOfContentsChartName,  Title, sort)
	VALUES (@View, @Table, @Chart, @Title, @Sort) 

--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~
SELECT * FROM tblCharts
WHERE tblOfContentsChartName = @Chart
AND SourceTable = @Table