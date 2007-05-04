USE CDHPState
GO
--SELECT * FROM Demographics_titles


UPDATE temp_update_sources_demographics
SET dbkey = 'tpop02'
WHERE ltrim(rtrim(dbkey)) LIKE 'topo02'

SELECT * FROM temp_update_sources_demographics
WHERE ltrim(rtrim(dbkey)) LIKE 'topo02'


SELECT * FROM temp_update_sources_workforce
WHERE len([Source Label]) > 100
labellen = MAX(len([Source Label])), hreflen= MAX(len([Source URL])) 

ALTER TABLE glsColumnLabels
ALTER COLUMN 
ColSourceLabel varchar(255) NOT NULL 


SELECT * FROM tblCharts WHERE