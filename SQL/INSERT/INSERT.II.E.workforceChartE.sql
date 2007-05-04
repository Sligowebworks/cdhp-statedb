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
SET @Title =  'Chart E: Dental Assistant Workforce'
SET @Chart = @Heading + @Title 
SET @Table = 'workforce'
SET @Sort = 0
SET @PageKey = 31


DELETE FROM tblCharts 
WHERE 
tblOfContentsChartName = @Chart
AND SourceTable = @Table

--~~~
SET @View = 'workforceChartE1a'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'workforceChartE1b'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

/*SET @View = 'workforceChartE1c'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1
*/
SET @View = 'workforceChartE1d'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'workforceChartE1e'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'workforceChartE1f'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'workforceChartE1g'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'workforceChartE1h'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'workforceChartE1i'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

--~~~
/*
SET @View = 'workforceChartE2a'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'workforceChartE2b'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'workforceChartE2c'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'workforceChartE2d'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'workforceChartE2e'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'workforceChartE2f'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1
*/
--~~~

SET @View = 'workforceChartE3a'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

--~~~
SELECT * FROM tblCharts
WHERE tblOfContentsChartName = @Chart
AND SourceTable = @Table