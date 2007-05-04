USE CDHPState
GO
DECLARE @Chart nvarchar(300)
DECLARE @Heading nvarchar(300)
DECLARE @Table nvarchar(50)
DECLARE @Sort int
DECLARE @View nvarchar(50)
DECLARE @Title nvarchar(300)
DECLARE @PageKey int

SET @Heading = 'Medicaid SCHIP Variables'
SET @Title =  'Chart A: Eligibility'
SET @Chart = @Heading + @Title
SET @Table = 'medischip3'
SET @Sort = 0
SET @PageKey = 6

DELETE FROM tblCharts 
WHERE MenuItemKey = @PageKey
--tblOfContentsChartName = @Chart
--AND SourceTable = @Table

--~~~

SET @View = 'medischipChartA1'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'medischipChartA2'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'medischipChartA3'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

SET @View = 'medischipChartA4'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) SET @Sort = @Sort + 1

--~~~

SELECT * FROM tblCharts
WHERE tblOfContentsChartName = @Chart
AND SourceTable = @Table