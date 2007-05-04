USE CDHPState
GO


UPDATE 
glsColumnLabels
SET ColSourceLabel = rtrim(ltrim([Source Label])), ColSourceHref = rtrim(ltrim([Source URL]))
FROM
	glsColumnLabels 
INNER JOIN
	temp_update_sources_InsCovStat
on glsColumnLabels.ColShortName = ltrim(rtrim(temp_update_sources_InsCovStat.dbkey))

GO


SELECT * FROM 
	glsColumnLabels S
INNER JOIN
	temp_update_sources_InsCovStat d
on S.ColShortName = ltrim(rtrim(d.dbkey))

