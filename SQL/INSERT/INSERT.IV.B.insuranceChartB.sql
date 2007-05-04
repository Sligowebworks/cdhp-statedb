USE CDHPState
GO
DECLARE @Chart nvarchar(300)
DECLARE @Heading nvarchar(300)
DECLARE @Table nvarchar(50)
DECLARE @Sort int
DECLARE @max int
DECLARE @View nvarchar(50)
DECLARE @Title nvarchar(150)
DECLARE @PageKey  int
DECLARE @2ndLoop int

SET @Heading = 'Insurance Variables'
SET @Title =  'Chart B: Health Insurance Coverage Status and Type of Coverage by State for All People: 2003-2000  (Numbers in thousands. Based on a November 2001 weighting correction. Not poverty universe: unrelated individuals under age 15 are included)'
SET @Chart = @Heading + @Title
SET @Table = 'inscovtotal'
SET @PageKey = 15

DELETE FROM tblCharts 
WHERE MenuItemKey = @PageKey
--tblOfContentsChartName = @Chart
--AND SourceTable = @Table

--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~
SET @Sort = 0
SET @2ndLoop = 0
SET @max =  5

WHILE  @Sort< @max
BEGIN
		SET @View = 'insuranceChartBone_' + cast((@Sort + 1) as varchar(2))

	INSERT tblCharts (SQLView, SourceTable, tblOfContentsChartName,  Title, sort, MenuItemKey)
	VALUES (@View, @Table, @Chart, @Title, @Sort, @PageKey) 
	SET @Sort = @Sort + 1
	
END
--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~
--SET @Sort = 0
SET @max =  8

WHILE @2ndLoop < @max
BEGIN
		SET @View = 'insuranceChartBtwo_' + cast((@2ndLoop + 1) as varchar(2))

	INSERT tblCharts (SQLView, SourceTable, tblOfContentsChartName,  Title, sort, MenuItemKey)
	VALUES (@View, @Table, @Chart, @Title, @Sort, @PageKey) 
	SET @Sort = @Sort + 1
	SET @2ndLoop = @2ndLoop +1
END
--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~
/*
SET @View = 'insuranceChartB1a'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'insuranceChartB1b'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'insuranceChartB1c'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'insuranceChartB1d'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'insuranceChartB1e'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

--~~~
SET @View = 'insuranceChartB2a'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'insuranceChartB2b'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'insuranceChartB2c'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'insuranceChartB2d'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'insuranceChartB2e'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'insuranceChartB2f'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'insuranceChartB2g'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'insuranceChartB2h'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1
*/

SELECT * FROM tblCharts
WHERE tblOfContentsChartName = @Chart
AND SourceTable = @Table