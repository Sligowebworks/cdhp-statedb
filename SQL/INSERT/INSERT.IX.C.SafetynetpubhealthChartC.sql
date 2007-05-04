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
SET @TOCTitle =  'Chart C'
SET @Chart = @Heading + @TOCTitle
SET @Title = 'Chart C: 2004-2001'
SET @Table = 'Safetynetpubhealth'
SET @PageKey = 18

DELETE FROM tblCharts 
WHERE 
tblOfContentsChartName = @Chart
AND SourceTable = @Table

--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~
SET @Sort = 0
SET @max =  5

WHILE @sort < @max
BEGIN
		SET @View = 'SafetynetpubhealthChartC' + cast((@Sort + 1) as varchar(2))

	INSERT tblCharts (MenuItemKey, SQLView, SourceTable, tblOfContentsChartName,  Title, sort)
	VALUES (@PageKey, @View, @Table, @Chart, @Title, @Sort) 
SET @Sort = @Sort + 1
END
--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~


/*
INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartC1', 'Safetynetpubhealth', 'SafetynetpubhealthChartC', '12')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartC2', 'Safetynetpubhealth', 'SafetynetpubhealthChartC', '13')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartC3', 'Safetynetpubhealth', 'SafetynetpubhealthChartC', '14')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartC4', 'Safetynetpubhealth', 'SafetynetpubhealthChartC', '15')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartC5', 'Safetynetpubhealth', 'SafetynetpubhealthChartC', '16')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartC6', 'Safetynetpubhealth', 'SafetynetpubhealthChartC', '17')

*/

SELECT *  FROM tblCharts 
WHERE 
tblOfContentsChartName = @Chart
AND SourceTable = @Table