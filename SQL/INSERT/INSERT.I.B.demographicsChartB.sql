USE CDHPState
GO
DECLARE @Chart nvarchar(300)
DECLARE @Heading nvarchar(300)
DECLARE @Table nvarchar(50)
DECLARE @Sort int
DECLARE @max int
DECLARE @View nvarchar(50)
DECLARE @Title nvarchar(150)

SET @Heading = 'Demographics'
SET @Title ='Chart B'
SET @Chart = @Heading +  @Title
SET @Table = 'demographics'

DELETE FROM tblCharts 
WHERE 
tblOfContentsChartName = @Chart
AND SourceTable = @Table

--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~
SET @Sort = 0
SET @max =  4

WHILE @sort < @max
BEGIN
		SET @View = 'demographicsChartB' + cast((@Sort + 1) as varchar(2))

	INSERT tblCharts (SQLView, SourceTable, tblOfContentsChartName,  Title, sort)
	VALUES (@View, @Table, @Chart, @Title, @Sort) 
SET @Sort = @Sort + 1
END
--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~


UPDATE tblCharts SET Title = 'Persons under 18' WHERE SQLView = 'demographicsChartB1';
UPDATE tblCharts SET Title = 'Persons under 5 2004-2000' WHERE SQLView = 'demographicsChartB2';
UPDATE tblCharts SET Title = 'Persons 5-9 2000' WHERE SQLView = 'demographicsChartB3';
UPDATE tblCharts SET Title = 'Persons 10-14 2000' WHERE SQLView = 'demographicsChartB4';



/*
SET @View = 'demographicsChartB1'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'demographicsChartB2'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'demographicsChartB3'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'demographicsChartB4'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'demographicsChartB5'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'demographicsChartB6'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1
*/


SELECT * FROM tblCharts
WHERE tblOfContentsChartName = @Chart
AND SourceTable = @Table