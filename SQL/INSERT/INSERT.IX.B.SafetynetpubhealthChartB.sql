USE CDHPState
GO

DECLARE @Chart nvarchar(300)
DECLARE @Heading nvarchar(300)
DECLARE @Table nvarchar(50)
DECLARE @Sort int
DECLARE @max int
DECLARE @View nvarchar(50)
DECLARE @TOCTitle nvarchar(50)
DECLARE @Title nvarchar(150)
DECLARE @PageKey int

SET @Heading = 'Public Health Safety Net Variables'
SET @TOCTitle =  'Chart B'
SET @Chart = @Heading + @TOCTitle
SET @Title = 'Chart B: 2004-2001'
SET @Table = 'Safetynetpubhealth'
SET @PageKey = 11

DELETE FROM tblCharts 
WHERE 
tblOfContentsChartName = @Chart
AND SourceTable = @Table

--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~
SET @Sort = 0
SET @max =  6

WHILE @sort < @max
BEGIN
		SET @View = 'SafetynetpubhealthChartB' + cast((@Sort + 1) as varchar(2))

	INSERT tblCharts (MenuItemKey, SQLView, SourceTable, tblOfContentsChartName,  Title, sort)
	VALUES (@PageKey, @View, @Table, @Chart, @Title, @Sort) 
SET @Sort = @Sort + 1
END
--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~


/*
INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartB1', 'Safetynetpubhealth', 'SafetynetpubhealthChartB', '6')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartB2', 'Safetynetpubhealth', 'SafetynetpubhealthChartB', '7')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartB3', 'Safetynetpubhealth', 'SafetynetpubhealthChartB', '8')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartB4', 'Safetynetpubhealth', 'SafetynetpubhealthChartB', '9')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartB5', 'Safetynetpubhealth', 'SafetynetpubhealthChartB', '10')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartB6', 'Safetynetpubhealth', 'SafetynetpubhealthChartB', '11')
*/


SELECT * FROM tblCharts 
WHERE 
tblOfContentsChartName = @Chart
AND SourceTable = @Table