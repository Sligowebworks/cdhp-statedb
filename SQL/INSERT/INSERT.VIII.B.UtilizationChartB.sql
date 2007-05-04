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

SET @Heading = 'Access and Utilization Variables'
SET @TOCTitle = 'States'' approaches to increasing dental access 2000'
SET @Title = @TOCTitle
SET @Chart = @Heading +@Title
SET @Table = 'au'
SET @Sort = 0
SET @PageKey = 37

DELETE FROM tblCharts 
WHERE MenuItemKey = @PageKey

--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~
SET @Sort = 0
SET @max =  1

WHILE @sort < @max
BEGIN
		SET @View = 'UtilizationChartB' + cast((@Sort + 1) as varchar(2))

	INSERT tblCharts (MenuItemKey, SQLView, SourceTable, tblOfContentsChartName,  Title, sort)
	VALUES (@PageKey, @View, @Table, @Chart, @Title, @Sort) 
SET @Sort = @Sort + 1
END
--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~


SELECT * 
FROM tblCharts 
WHERE MenuItemKey = @PageKey

/*
INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('UtilizationChartA1', 'au', 'UtilizationChartA', '1')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('UtilizationChartA2', 'au', 'UtilizationChartA', '2')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('UtilizationChartA3', 'au', 'UtilizationChartA', '3')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('UtilizationChartA4', 'au', 'UtilizationChartA', '4')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('UtilizationChartA5', 'au', 'UtilizationChartA', '5')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('UtilizationChartA6', 'au', 'UtilizationChartA', '6')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('UtilizationChartA7', 'au', 'UtilizationChartA', '7')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('UtilizationChartA8', 'au', 'UtilizationChartA', '8')

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES
('UtilizationChartA9', 'au', 'UtilizationChartA', '9')

*/