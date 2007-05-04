
USE CDHPState
GO

--DROP TABLE  
--DELETE FROM demographics_titles
--
/*
SELECT * FROM tblOfContents 
INNER JOIN tblCharts on tblOfContentsChartName =(rtrim( Heading) + rtrim(Chart))
AND ImportTable = SourceTable
Where ImportTable= 'demographics'
*/

SELECT * 
--DELETE 
FROM glsColumnLabels
WHERE ViewName LIKE 'demographics%'

--INSERT glsColumnLabels

SELECT DISTINCT *, 'http://datasource.ext', 'data source' 
FROM
(
SELECT DISTINCT
 SQLView, syscolumns.name , [Data Point Label]
FROM
Demographics_titles
INNER JOIN
--tblCharts on (Title = [NewChart Title] OR [Chart Title] LIKE Title+'%')
--INNER JOIN
sysobjects on sysobjects.name = SQLView 
INNER JOIN 
syscolumns on sysobjects.id = syscolumns.id AND syscolumns.colid = (Demographics_titles.[sort1] + 1)
AND syscolumns.name <> 'State'
) sub
--ORDER BY SQLView

--SELECT * FROM glsColumnLabels