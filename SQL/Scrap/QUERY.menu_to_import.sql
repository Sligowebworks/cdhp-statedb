USE CDHPState
GO

SELECT * FROM Menu
INNER JOIN tblCharts on Menu.id = tblcharts.MenuItemKey
INNER JOIN glsColumnLabels on glsColumnLabels.ViewName = tblcharts.SQLVIew
WHERE 
	1 =1
	--MenuSectionkey = 6
	--AND SourceTable LIKE 'Sa%'
ORDER BY 
SectSort, ItemSort

SELECT Section, Title, SourceTable, count(ColShortName)
FROM Menu
INNER JOIN tblCharts on Menu.id = tblcharts.MenuItemKey
INNER JOIN glsColumnLabels on glsColumnLabels.ViewName = tblcharts.SQLVIew
WHERE ColSourceHref ='http://datasource.ext'
GROUP BY Section, Title, SourceTable