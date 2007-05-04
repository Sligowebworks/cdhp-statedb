USE CDHPState
GO


UPDATE 
glsColumnLabels
SET ColSourceLabel = rtrim(ltrim([Source Label])), ColSourceHref = rtrim(ltrim([Source URL]))
FROM
	glsColumnLabels 
INNER JOIN
	temp_update_sources_SafetyNetPubHealth
on glsColumnLabels.ColShortName = ltrim(rtrim(temp_update_sources_SafetyNetPubHealth.dbkey))

GO


SELECT * FROM 
	glsColumnLabels S
INNER JOIN
	temp_update_sources_SafetyNetPubHealth d
on S.ColShortName = ltrim(rtrim(d.dbkey))

