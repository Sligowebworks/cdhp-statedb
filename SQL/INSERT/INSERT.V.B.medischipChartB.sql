USE CDHPState
GO
DECLARE @Chart nvarchar(300)
DECLARE @Heading nvarchar(300)
DECLARE @Table nvarchar(50)
DECLARE @Sort int
DECLARE @View nvarchar(50)
DECLARE @Title nvarchar(200)
DECLARE @PageKey int

SET @Heading = 'Medicaid SCHIP Variables'
SET @Title =  'Chart B: Financing'
SET @Chart = @Heading +@Title
SET @Table = 'medischip3'
SET @Sort = 0
SET @PageKey = 14

DELETE FROM tblCharts 
WHERE MenuItemKey = @PageKey
--tblOfContentsChartName = @Chart AND SourceTable = @Table

--~~~

SET @View = 'medischipChartB1'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'medischipChartB2'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'medischipChartB3'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

--~~~

SELECT * FROM tblCharts
WHERE tblOfContentsChartName = @Chart
AND SourceTable = @Table