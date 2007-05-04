USE CDHPState
GO
DECLARE @Chart nvarchar(300)
DECLARE @Heading nvarchar(300)
DECLARE @Table nvarchar(50)
DECLARE @Sort int
DECLARE @View nvarchar(50)
DECLARE @Title nvarchar(200)
DECLARE @PageKey int

SET @Heading = 'Oral Health Workforce Variables'
SET @Title = 'Chart D: Dental Hygiene Workforce'
SET @Chart = @Heading + @Title
SET @Table = 'workforce'
SET @Sort = 0
SET @PageKey = 27


DELETE FROM tblCharts 
WHERE 
tblOfContentsChartName = @Chart
AND SourceTable = @Table

--~~~
SET @View = 'workforceChartD1a'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, MenuItemKey, Title)
VALUES (@View, @Table, @Chart, @Sort, @PageKey, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartD1b'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, MenuItemKey, Title)
VALUES (@View, @Table, @Chart, @Sort, @PageKey, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartD1c'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, MenuItemKey, Title)
VALUES (@View, @Table, @Chart, @Sort, @PageKey, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartD1d'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, MenuItemKey, Title)
VALUES (@View, @Table, @Chart, @Sort, @PageKey, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartD1e'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, MenuItemKey, Title)
VALUES (@View, @Table, @Chart, @Sort, @PageKey, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartD1f'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, MenuItemKey, Title)
VALUES (@View, @Table, @Chart, @Sort, @PageKey, @Title) SET @Sort = @Sort + 1

--~~~

SET @View = 'workforceChartD2a'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, MenuItemKey, Title)
VALUES (@View, @Table, @Chart, @Sort, @PageKey, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartD2b'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, MenuItemKey, Title)
VALUES (@View, @Table, @Chart, @Sort, @PageKey, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartD2c'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, MenuItemKey, Title)
VALUES (@View, @Table, @Chart, @Sort, @PageKey, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartD2d'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, MenuItemKey, Title)
VALUES (@View, @Table, @Chart, @Sort, @PageKey, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartD2e'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, MenuItemKey, Title)
VALUES (@View, @Table, @Chart, @Sort, @PageKey, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartD2f'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, MenuItemKey, Title)
VALUES (@View, @Table, @Chart, @Sort, @PageKey, @Title) SET @Sort = @Sort + 1

--~~~
/*
SET @View = 'workforceChartD3'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1
*/
--~~~

SET @View = 'workforceChartD4a'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, MenuItemKey, Title)
VALUES (@View, @Table, @Chart, @Sort, @PageKey, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartD4b'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, MenuItemKey, Title)
VALUES (@View, @Table, @Chart, @Sort, @PageKey, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartD4c'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, MenuItemKey, Title)
VALUES (@View, @Table, @Chart, @Sort, @PageKey, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartD4d'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, MenuItemKey, Title)
VALUES (@View, @Table, @Chart, @Sort, @PageKey, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartD4e'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, MenuItemKey, Title)
VALUES (@View, @Table, @Chart, @Sort, @PageKey, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartD4f'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, MenuItemKey, Title)
VALUES (@View, @Table, @Chart, @Sort, @PageKey, @Title) SET @Sort = @Sort + 1

--~~~
SELECT * FROM tblCharts
WHERE tblOfContentsChartName = @Chart
AND SourceTable = @Table