USE CDHPState
GO
DECLARE @Chart nvarchar(300)
DECLARE @Heading nvarchar(300)
DECLARE @Table nvarchar(50)
DECLARE @Sort int
DECLARE @View nvarchar(50)
DECLARE @PageKey int
DECLARE @Title nvarchar(200)

SET @Heading = 'Oral Health Workforce Variables'
SET @Title =  'Chart B: Dental Workforce Demographics'
SET @Chart = @Heading + @Title
SET @Table = 'workforce'
SET @Sort = 0
SET @PageKey = 13


DELETE FROM tblCharts 
WHERE 
tblOfContentsChartName = @Chart
AND SourceTable = @Table

--~~~
SET @View = 'workforceChartB'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, Title, sort)
VALUES (@PageKey, @View, @Table, @Chart, @Title, @Sort) SET @Sort = @Sort + 1

--~~~

SELECT * FROM tblCharts
WHERE tblOfContentsChartName = @Chart
AND SourceTable = @Table