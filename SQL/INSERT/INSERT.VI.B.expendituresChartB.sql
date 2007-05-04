USE CDHPState
GO
DECLARE @Chart nvarchar(300)
DECLARE @Heading nvarchar(300)
DECLARE @Table nvarchar(50)
DECLARE @Sort int
DECLARE @View nvarchar(50)
DECLARE @PageKey int
DECLARE @Title nvarchar(300)

SET @Heading = 'Expenditures'
SET @Title =  'Chart B: Children’s Medicaid Expenditure Totals '
SET @Chart = @Heading + @Title
SET @Table = 'medischip3'
SET @Sort = 0
SET @PAgeKey = 12

DELETE FROM tblCharts 
WHERE MenuItemKey = @PAgeKey
--tblOfContentsChartName = @Chart
--AND SourceTable = @Table

--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

DECLARE @max int
SET @max =  5

WHILE @sort < @max
BEGIN
	SET @View = 'expendituresChartB' + cast((@Sort + 1) as varchar(2))

	INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKEy)
	VALUES (@View, @Table, @Chart, @Sort, @Title, @PageKey) 

	SET @Sort = @Sort + 1
END
--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

/*
SET @View = 'expendituresChartG1'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'medischipChartG2'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'medischipChartG3'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'medischipChartG4'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'medischipChartG5'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'medischipChartG6'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1
*/

SELECT * FROM tblCharts
WHERE tblOfContentsChartName = @Chart
AND SourceTable = @Table