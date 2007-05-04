--USE CDHPState


SELECT * 
--UPDATE tblCharts SET MenuItemKey = m.ID
FROM
--tblCharts c 
/*INNER JOIN */tblOfContents toc 
--on toc.importTable = c.SourceTable AND c.tblOfContentsChartName = toc.Chart--AND c.SourceTable = 'medischip3'
INNER JOIN glsMenuItems m 
on toc.Chart = m.tblOfContentsChartName AND toc.Heading = m.tblOfContentsHeadingName
--ORDER BY c.SourceTable ASC , c.SQLView, toc.SORT


-- Use this one
SELECT * 
--UPDATE tblCharts SET MenuItemKey = m.ID
FROM
tblCharts c 
INNER JOIN 
(  SELECT DISTINCT Heading, Chart FROM tblOfContents 
)toc 
--on toc.importTable = c.SourceTable AND c.tblOfContentsChartName = toc.Chart--AND c.SourceTable = 'medischip3'
ON c.tblOfContentsChartName = rtrim(toc.Heading) + toc.Chart
INNER JOIN glsMenuItems m 
on toc.Chart = m.tblOfContentsChartName AND toc.Heading = m.tblOfContentsHeadingName
ORDER BY c.SourceTable ASC , c.SQLView--, toc.SORT


SELECT ImportTable, 
-- tblOfContentsChartName,
* 
FROM tblOfContents
WHERE importTable = 'medischip3'
ORDER BY ImportTable, Heading, Chart


--SELECT * INTO [tblCharts_BU_20060224]  FROM tblCharts

/*
SELECT 
 SourceTable,
* 
FROM tblCharts
WHERE SourceTable = 'medischip3'
ORDER BY SourceTable ASC , SQLView, SORT
*/

--SELECT Count(*) from tblCharts -- 284
/*
SELECT --*
tblCharts.ID,
Heading 
,ImportTable
,Chart
, tblOfContentsChartName
,SourceTable
FROM tblOfContents
RIGHT JOIN tblCharts 
on tblCharts.tblOfContentsChartName = rtrim(ImportTable) + rtrim(Chart)
--tblOfContents.ImportTable = tblCharts.SourceTable
--WHERE ImportTable IS NULL or SourceTable IS NULL
--WHERE tblOfContentsChartName IS NULL OR Chart IS NULL
ORDER BY tblCharts.ID

*/
--SELECT * FROM glsMenuItems
--tblOfContentsChartName
-- tblOfContentsHeadingName
-- Label




--SELECT * 
--UPDATE tblCharts SET MenuItemKey = m.ID
--FROM
--tblCharts c
--INNER JOIN tblOfContents t on c.tblOfContentsChartName = t.Chart --AND c.SourceTable = t.ImportTable
--INNER JOIN glsMenuItems m on t.Chart = m.tblOfContentsChartName AND t.Heading = m.tblOfContentsHeadingName
