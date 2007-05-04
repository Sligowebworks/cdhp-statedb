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
SET @Title =  'Chart C'
SET @Chart = @Heading + @Title
SET @Table = 'demographics'

DELETE FROM tblCharts 
WHERE 
tblOfContentsChartName = @Chart
AND SourceTable = @Table


--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~
SET @Sort = 0
SET @max =  7

WHILE @sort < @max
BEGIN
		SET @View = 'demographicsChartC' + cast((@Sort + 1) as varchar(2))

	INSERT tblCharts (SQLView, SourceTable, tblOfContentsChartName,  Title, sort)
	VALUES (@View, @Table, @Chart, @Title, @Sort) 
SET @Sort = @Sort + 1
END
--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

UPDATE tblCharts SET Title = 'White children under 18' WHERE SQLView = 'demographicsChartC1';
UPDATE tblCharts SET Title = 'Black children under 18' WHERE SQLView = 'demographicsChartC2';
UPDATE tblCharts SET Title = 'Asian/Pacific Islander children under 18' WHERE SQLView = 'demographicsChartC3';
UPDATE tblCharts SET Title = 'American Indian/Alaska Native children under 18' WHERE SQLView = 'demographicsChartC4';
UPDATE tblCharts SET Title = 'Other Race children under 18' WHERE SQLView = 'demographicsChartC5';
UPDATE tblCharts SET Title = 'More than one race children under 18' WHERE SQLView = 'demographicsChartC6';
UPDATE tblCharts SET Title = 'Hispanic children under 18' WHERE SQLView = 'demographicsChartC7';

/*
SET @View = 'demographicsChartC00'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'demographicsChartC01'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'demographicsChartC02'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'demographicsChartC03'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'demographicsChartC04'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1
*/

SELECT * FROM tblCharts
WHERE tblOfContentsChartName = @Chart
AND SourceTable = @Table