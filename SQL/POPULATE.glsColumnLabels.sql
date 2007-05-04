USE CDHPState
GO

DELETE FROM glsColumnLabels
GO

INSERT INTO glsColumnLabels
SELECT  C.SQLView, sC.name, I.Long, 'http://datasource.ext', 'source'
 FROM 
tblCharts C	-- for ViewName
INNER JOIN sysObjects sO on sO.name = C.SQLView --for objID
INNER JOIN sysColumns sC on sO.ID = sC.ID
INNER JOIN ImportColumns I on C.SourceTable = I.Source AND sC.name = rtrim(ltrim(I.Short))

--ORDER BY SQLView


--SELECT * FROM glsColumnLabels
--WHERE ColShortName = 'povrateunder1904'



--ViewName, ColShortName, ColLongName, ColSourceHREF, ColSourceLabel

--SELECT * FROM tblCharts
--SQLView SourceTable

--SELECT * FROM sysColumns
-- name, 

--SELECT * FROM sysobjects
--name, id