USE CDHPState
GO


UPDATE 
glsColumnLabels
SET ColSourceLabel = [Source Label], ColSourceHref = [Source URL]
FROM
	glsColumnLabels 
INNER JOIN
	temp_update_sources_demographics
on glsColumnLabels.ColShortName = ltrim(rtrim(temp_update_sources_demographics.dbkey))

GO


SELECT * FROM 
	glsColumnLabels S
INNER JOIN
	temp_update_sources_demographics d
on S.ColShortName = ltrim(rtrim(d.dbkey))
