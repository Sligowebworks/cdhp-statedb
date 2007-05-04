USE CDHPState
GO
/*
SELECT DISTINCT dbkey
--* --count(*) 
FROM temp_update_sources_demographics;
*/
GO

SELECT * FROM 
	glsColumnLabels S
INNER JOIN
	temp_update_sources_demographics d
on S.ColShortName = ltrim(rtrim(d.dbkey))

--SELECT * FROM glsColumnLabels where ColShortName LIKE '%tpop02%'

SELECT * FROM glsColumnLabels WHERE ViewName LIKE 'demographics%'
ORDER BY ViewName

--SELECT * FROM glsColumnLabels WHERE ViewName = 'demographicsChartA'