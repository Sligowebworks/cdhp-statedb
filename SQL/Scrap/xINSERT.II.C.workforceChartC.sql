USE CDHPState
GO
DECLARE @Chart nvarchar(300)
DECLARE @Heading nvarchar(300)
DECLARE @Table nvarchar(50)
DECLARE @Sort int
DECLARE @View nvarchar(50)

SET @Heading = 'Oral Health Workforce Variables'
SET @Chart = @Heading + 'Chart C: Dental Education'
SET @Table = 'workforce'
SET @Sort = 0


DELETE FROM tblCharts 
WHERE 
tblOfContentsChartName = @Chart
AND SourceTable = @Table

--~~~
SET @View = 'workforceChartC1a'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'workforceChartC1b'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'workforceChartC1c'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'workforceChartC1d'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'workforceChartC1e'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

--~~~

SELECT * FROM tblCharts
WHERE tblOfContentsChartName = @Chart
AND SourceTable = @TableUSE CDHPState
GO
DECLARE @Chart nvarchar(300)
DECLARE @Heading nvarchar(300)
DECLARE @Table nvarchar(50)
DECLARE @Sort int
DECLARE @View nvarchar(50)

SET @Heading = 'Oral Health Workforce Variables'
SET @Chart = @Heading + 'Chart C: Dental Education'
SET @Table = 'workforce'
SET @Sort = 0


DELETE FROM tblCharts 
WHERE 
tblOfContentsChartName = @Chart
AND SourceTable = @Table

--~~~
SET @View = 'workforceChartC2a'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'workforceChartC2b'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'workforceChartC2c'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'workforceChartC2d'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'workforceChartC2e'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'workforceChartC2f'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

--~~~

SELECT * FROM tblCharts
WHERE tblOfContentsChartName = @Chart
AND SourceTable = @TableUSE CDHPState
GO
DECLARE @Chart nvarchar(300)
DECLARE @Heading nvarchar(300)
DECLARE @Table nvarchar(50)
DECLARE @Sort int
DECLARE @View nvarchar(50)

SET @Heading = 'Oral Health Workforce Variables'
SET @Chart = @Heading + 'Chart C: Dental Education'
SET @Table = 'workforce'
SET @Sort = 0


DELETE FROM tblCharts 
WHERE 
tblOfContentsChartName = @Chart
AND SourceTable = @Table

--~~~
SET @View = 'workforceChartC3'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

--~~~

SELECT * FROM tblCharts
WHERE tblOfContentsChartName = @Chart
AND SourceTable = @TableUSE CDHPState
GO
DECLARE @Chart nvarchar(300)
DECLARE @Heading nvarchar(300)
DECLARE @Table nvarchar(50)
DECLARE @Sort int
DECLARE @View nvarchar(50)

SET @Heading = 'Oral Health Workforce Variables'
SET @Chart = @Heading + 'Chart C: Dental Education'
SET @Table = 'workforce'
SET @Sort = 0


DELETE FROM tblCharts 
WHERE 
tblOfContentsChartName = @Chart
AND SourceTable = @Table

--~~~
SET @View = 'workforceChartC1a'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'workforceChartC1b'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'workforceChartC1c'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'workforceChartC1d'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'workforceChartC1e'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

--~~~

SELECT * FROM tblCharts
WHERE tblOfContentsChartName = @Chart
AND SourceTable = @TableUSE CDHPState
GO
DECLARE @Chart nvarchar(300)
DECLARE @Heading nvarchar(300)
DECLARE @Table nvarchar(50)
DECLARE @Sort int
DECLARE @View nvarchar(50)

SET @Heading = 'Oral Health Workforce Variables'
SET @Chart = @Heading + 'Chart C: Dental Education'
SET @Table = 'workforce'
SET @Sort = 0


DELETE FROM tblCharts 
WHERE 
tblOfContentsChartName = @Chart
AND SourceTable = @Table

--~~~
SET @View = 'workforceChartC2a'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'workforceChartC2b'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'workforceChartC2c'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'workforceChartC2d'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'workforceChartC2e'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

SET @View = 'workforceChartC2f'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

--~~~

SELECT * FROM tblCharts
WHERE tblOfContentsChartName = @Chart
AND SourceTable = @TableUSE CDHPState
GO
DECLARE @Chart nvarchar(300)
DECLARE @Heading nvarchar(300)
DECLARE @Table nvarchar(50)
DECLARE @Sort int
DECLARE @View nvarchar(50)

SET @Heading = 'Oral Health Workforce Variables'
SET @Chart = @Heading + 'Chart C: Dental Education'
SET @Table = 'workforce'
SET @Sort = 0


DELETE FROM tblCharts 
WHERE 
tblOfContentsChartName = @Chart
AND SourceTable = @Table

--~~~
SET @View = 'workforceChartC3'
INSERT tblCharts (SQLView,SourceTable,tblOfContentsChartName, sort)
VALUES (@View, @Table, @Chart, @Sort) SET @Sort = @Sort + 1

--~~~

SELECT * FROM tblCharts
WHERE tblOfContentsChartName = @Chart
AND SourceTable = @Table