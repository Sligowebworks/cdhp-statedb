USE CDHPState
GO


UPDATE 
glsColumnLabels
SET ColSourceLabel = rtrim(ltrim([Source Label])), ColSourceHref = rtrim(ltrim([Source URL]))
FROM
	glsColumnLabels 
INNER JOIN
	temp_update_sources_workforce
on glsColumnLabels.ColShortName = ltrim(rtrim(temp_update_sources_workforce.dbkey))

GO


SELECT * FROM 
	glsColumnLabels S
INNER JOIN
	temp_update_sources_workforce d
on S.ColShortName = ltrim(rtrim(d.dbkey))
