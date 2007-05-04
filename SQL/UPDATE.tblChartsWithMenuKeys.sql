


USE CDHPState
GO

SELECT *
--UPDATE tblCharts SET MenuItemKey = M.ID
FROM 
tblCharts C
	INNER JOIN
glsMenuItems M

ON c.tblOfContentsChartName = M.tblOfContentsHeadingName + M.tblOfContentsChartName
ORDER BY SQLView
--ORDER BY C.ID DESC


/*


	INNER JOIN 
tblOfContents
ON tblOfContentsChartName = Chart AND tblOfContentsHeadingName = Heading

SELECT  tblOfContentsHeadingName + tblOfContentsChartName, * FROM glsMenuItems


SELECT count(*) from tblCharts WHERE MenuItemKey IS NOT NULL


SELECT * FROM tblCharts WHERE SourceTable = 'demographics'


*/