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
SET @Title =  'Chart D'
SET @Chart = @Heading + @Title
SET @Table = 'demographics'

DELETE FROM tblCharts 
WHERE tblOfContentsChartName = @Chart
AND SourceTable = @Table

--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~
SET @Sort = 0
SET @max =  2

WHILE @sort < @max
BEGIN
		SET @View = 'demographicsChartD' + cast((@Sort + 1) as varchar(2))

	INSERT tblCharts (SQLView, SourceTable, tblOfContentsChartName,  Title, sort)
	VALUES (@View, @Table, @Chart, @Title, @Sort) 
SET @Sort = @Sort + 1
END
--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

UPDATE tblCharts SET Title = 'Poverty rate for children 18 and under 19 (%)' WHERE SQLView = 'demographicsChartD1';
UPDATE tblCharts SET Title = 'Percent of related children under age 18 in poverty' WHERE SQLView = 'demographicsChartD2';



SELECT * FROM tblCharts
WHERE tblOfContentsChartName = @Chart
AND SourceTable = @Table