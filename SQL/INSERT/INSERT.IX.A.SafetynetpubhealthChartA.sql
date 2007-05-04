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
SET @TOCTitle =  'Chart A'
SET @Chart = @Heading + @TOCTitle
SET @Title = 'Chart A: 2004-2001'
SET @Table = 'Safetynetpubhealth'
SET @PageKey = 4

DELETE FROM tblCharts 
WHERE 
tblOfContentsChartName = @Chart
AND SourceTable = @Table

--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~
SET @Sort = 0
SET @max =  5

WHILE @sort < @max
BEGIN
		SET @View = 'SafetynetpubhealthChartA' + cast((@Sort + 1) as varchar(2))

	INSERT tblCharts (MenuItemKey, SQLView, SourceTable, tblOfContentsChartName,  Title, sort)
	VALUES (@PageKey, @View, @Table, @Chart, @Title, @Sort) 
SET @Sort = @Sort + 1
END
--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~


/*
INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartA1', 'Safetynetpubhealth', 'SafetynetpubhealthChartA', '1')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartA2', 'Safetynetpubhealth', 'SafetynetpubhealthChartA', '2')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartA3', 'Safetynetpubhealth', 'SafetynetpubhealthChartA', '3')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartA4', 'Safetynetpubhealth', 'SafetynetpubhealthChartA', '4')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('SafetynetpubhealthChartA5', 'Safetynetpubhealth', 'SafetynetpubhealthChartA', '5')
*/


SELECT * FROM tblCharts 
WHERE 
tblOfContentsChartName = @Chart
AND SourceTable = @Table

