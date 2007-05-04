USE CDHPState
GO
DECLARE @Chart nvarchar(300)
DECLARE @Heading nvarchar(300)
DECLARE @Table nvarchar(50)
DECLARE @Sort int
DECLARE @View nvarchar(50)
DECLARE @Title nvarchar(300)
DECLARE @PageKey int

SET @Heading = 'Insurance Variables'
SET @Title = 'Chart C: Health Insurance Coverage Status and Type of Coverage by State for Children under 18:(Numbers in thousands. )'
SET @Chart = @Heading + @Title
SET @Table = 'inscovtotal'
SET @Sort = 0
SET @PageKey = 22

DELETE FROM tblCharts 
WHERE MenuItemKey = @PageKey
--tblOfContentsChartName = @Chart
--AND SourceTable = @Table

--~~~

SET @View = 'insuranceChartC1a'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'insuranceChartC1b'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'insuranceChartC1c'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'insuranceChartC1d'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'insuranceChartC1e'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'insuranceChartC1f'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

--~~~


SET @View = 'insuranceChartC2a'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'insuranceChartC2b'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'insuranceChartC2c'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'insuranceChartC2d'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'insuranceChartC2e'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'insuranceChartC2f'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'insuranceChartC2g'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'insuranceChartC2h'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1


--~~~

SELECT * FROM tblCharts
WHERE tblOfContentsChartName = @Chart
AND SourceTable = @Table