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
SET @TOCTitle =  'Chart D'
SET @Chart = @Heading + @TOCTitle
SET @Title = 'Chart D: 2004-2001'
SET @Table = 'Safetynetpubhealth'
SET @PageKey = 26

DELETE FROM tblCharts 
WHERE 
tblOfContentsChartName = @Chart
AND SourceTable = @Table

--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~
SET @Sort = 0
SET @max =  6

WHILE @sort < @max
BEGIN
		SET @View = 'SafetynetpubhealthChartD' + cast((@Sort + 1) as varchar(2))

	INSERT tblCharts (MenuItemKey, SQLView, SourceTable, tblOfContentsChartName,  Title, sort)
	VALUES (@PageKey, @View, @Table, @Chart, @Title, @Sort) 
SET @Sort = @Sort + 1
END
--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~



/*

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartD1', 'Safetynetpubhealth', 'SafetynetpubhealthChartD', '18')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartD2', 'Safetynetpubhealth', 'SafetynetpubhealthChartD', '19')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartD3', 'Safetynetpubhealth', 'SafetynetpubhealthChartD', '20')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartD4', 'Safetynetpubhealth', 'SafetynetpubhealthChartD', '21')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartD5', 'Safetynetpubhealth', 'SafetynetpubhealthChartD', '22')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartD6', 'Safetynetpubhealth', 'SafetynetpubhealthChartD', '23')

*/

SELECT * FROM tblCharts 
WHERE 
tblOfContentsChartName = @Chart
AND SourceTable = @Table