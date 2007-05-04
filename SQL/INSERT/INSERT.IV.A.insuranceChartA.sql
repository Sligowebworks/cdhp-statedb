USE CDHPState
GO
DECLARE @Chart nvarchar(300)
DECLARE @Heading nvarchar(300)
DECLARE @Table nvarchar(50)
DECLARE @Sort int
DECLARE @View nvarchar(50)
DECLARE @Title nvarchar(800)
DECLARE @PageKey int

SET @Heading = 'Insurance Variables'
SET @Title =  '# and % of children under 19 at or below 200% of poverty (SCHIP allocation formula)( in thousands. Based on a Nov 2001 weighting correction.)'
SET @Chart = @Heading + @Title
SET @Table = 'insurance'
SET @Sort = 0
SET @PageKey = 8

DELETE FROM tblCharts 
WHERE  MenuItemKey = @PageKey
--tblOfContentsChartName = @Chart
--AND SourceTable = @Table

--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

DECLARE @max int
SET @max =  7

WHILE @sort < @max
BEGIN
		SET @View = 'insuranceChartA' + cast((@Sort + 1) as varchar(2))

	INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
	VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) 
	SET @Sort = @Sort + 1
END
--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

/*
SET @View = 'insuranceChartA1'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'insuranceChartA2'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'insuranceChartA3'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'insuranceChartA4'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'insuranceChartA5'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'insuranceChartA6'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'insuranceChartA7'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1
*/

SELECT * FROM tblCharts
WHERE tblOfContentsChartName = @Chart
AND SourceTable = @Table