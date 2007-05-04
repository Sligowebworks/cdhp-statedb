USE CDHPState
GO

--SELECT * 
SELECT DISTINCT tblOfContentsChartName
FROM tblCharts tbl
	INNER JOIN 
tblOfContents toc
ON tbl.tblOfContentsChartName = rtrim(toc.Heading) + toc.Chart
ORDER BY tblOfContentsChartName

SELECT tblOfContentsChartName, Count(tblOfContentsChartName)
FROM tblCharts tbl
	GROUP BY tblOfContentsChartName
ORDER BY tblOfContentsChartName


--SELECT Heading + Chart , * FROM tblOfContents  ORDER BY Heading ASC, Chart, Subchart, Title


SELECT Heading, count(Chart)
FROM tblOfContents
GROUP BY Heading
ORDER BY Heading


SELECT glsMenuSections.Label, glsMenuItems.* FROM glsMenuItems
INNER JOIN glsMenuSections on MenuSectionKey = glsMenuSections.ID
ORDER BY glsMenuSections.Label

SELECT * FROM glsMenuSections
