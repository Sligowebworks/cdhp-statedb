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
SET @TOCTitle =  'Adult'
SET @Chart = @Heading + @TOCTitle
SET @Title = @TOCTitle
SET @Table = 'au'
SET @PageKey = 2

DELETE FROM tblCharts 
WHERE MenuItemKey = @PageKey

--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~
SET @Sort = 0
SET @max =  11

WHILE @sort < @max
BEGIN
		SET @View = 'UtilizationChartA' + cast((@Sort + 1) as varchar(2))

	INSERT tblCharts (MenuItemKey, SQLView, SourceTable, tblOfContentsChartName,  Title, sort)
	VALUES (@PageKey, @View, @Table, @Chart, @Title, @Sort) 
SET @Sort = @Sort + 1
END
--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~


SELECT * FROM tblCharts 
WHERE MenuItemKey = @PageKey



/*





DECLARE @Title nvarchar(300)
DECLARE @PageKey int
SET @Title = 'Number of EPSDT eligible receiving Any Dental Service dental assessment'
SET @PageKey = 16


DELETE FROM tblCharts 
WHERE MenuItemKey = @PageKey--tblOfContentsChartName = 'UtilizationChartA'


INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES
('UtilizationChartA1', 'au', 'UtilizationChartA', '1', @Title, @PageKey)

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES
('UtilizationChartA2', 'au', 'UtilizationChartA', '2', @Title, @PageKey)

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES
('UtilizationChartA3', 'au', 'UtilizationChartA', '3', @Title, @PageKey)

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES
('UtilizationChartA4', 'au', 'UtilizationChartA', '4', @Title, @PageKey)


INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES
('UtilizationChartA5', 'au', 'UtilizationChartA', '5', @Title, @PageKey)

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES
('UtilizationChartA6', 'au', 'UtilizationChartA', '6', @Title, @PageKey)

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES
('UtilizationChartA7', 'au', 'UtilizationChartA', '7', @Title, @PageKey)

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES
('UtilizationChartA8', 'au', 'UtilizationChartA', '8', @Title, @PageKey)

INSERT tblCharts
(SQLView,SourceTable,tblOfContentsChartName, sort, Title, MenuItemKey)
VALUES
('UtilizationChartA9', 'au', 'UtilizationChartA', '9', @Title, @PageKey)

*/

