USE CDHPState
GO


SELECT * 

--UPDATE glsMenuItems  SET PageTitle = D.[New Page Title]

FROM glsMenuItems I
INNER JOIN (
SELECT DISTINCT Section, [Page Title], [New Page Title] , Sort FROM Demographics_titles) D
on  tblOfContentsHeadingName = D.Section AND tblOfContentsChartName = D.[Page Title]
ORDER BY I.ID



--SELECT * FROM [demographics_titles]





