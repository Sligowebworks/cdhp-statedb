USE CDHPState
GO
DECLARE @Chart nvarchar(300)
DECLARE @Heading nvarchar(300)
DECLARE @Table nvarchar(50)
DECLARE @Sort int
DECLARE @View nvarchar(50)
DECLARE @Pagekey int
DECLARE  @Title nvarchar(200)

SET @Heading = 'Oral Health Workforce Variables'
SET @Title = 'Chart C: Dental Education'
SET @Chart = @Heading + @Title
SET @Table = 'workforce'
SET @Sort = 0
SET @PageKey = 19


DELETE FROM tblCharts 
WHERE 
tblOfContentsChartName = @Chart
AND SourceTable = @Table

--~~~
SET @View = 'workforceChartC1a'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC1b'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC1c'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC1d'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC1e'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

--~~~

SET @View = 'workforceChartC2a'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC2b'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC2c'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC2d'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC2e'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC2f'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

--~~~

SET @View = 'workforceChartC3'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

--~~~

SET @View = 'workforceChartC4a'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC4b'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC4c'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC4d'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC4e'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC4f'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC4g'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC4h'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC4i'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC4j'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC4k'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC4l'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC4m'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC4n'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC4o'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC4p'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC4q'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC4r'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

--~~~

SET @View = 'workforceChartC6a'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC6b'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC6c'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC6d'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC6e'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

SET @View = 'workforceChartC6f'
INSERT tblCharts (MenuItemKey, SQLView,SourceTable,tblOfContentsChartName, sort, Title)
VALUES (@PageKey, @View, @Table, @Chart, @Sort, @Title) SET @Sort = @Sort + 1

--~~~
SELECT * FROM tblCharts
WHERE tblOfContentsChartName = @Chart
AND SourceTable = @Table