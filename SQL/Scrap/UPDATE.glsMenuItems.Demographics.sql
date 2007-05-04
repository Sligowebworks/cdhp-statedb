

USE CDHPState
Go


SELECT * FROM glsMenuItems
INNER JOIN
[Side Menu] on Label = [Group Label]

--SELECT Section, [Group] FROM Demographics_titles


SELECT * 
--UPDATE tblCharts SET MenuItemKey = m.ID
FROM
tblCharts c 
INNER JOIN 
(  SELECT DISTINCT [Heading] = Section, Chart = [Page Title] FROM Demographics_titles
)toc 
--on toc.importTable = c.SourceTable AND c.tblOfContentsChartName = toc.Chart--AND c.SourceTable = 'medischip3'
ON c.tblOfContentsChartName = rtrim(toc.Heading) + toc.Chart
INNER JOIN glsMenuItems m 
on toc.Chart = m.tblOfContentsChartName AND toc.Heading = m.tblOfContentsHeadingName
ORDER BY c.SourceTable ASC , c.SQLView--, toc.SORT



