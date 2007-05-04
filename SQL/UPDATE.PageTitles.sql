USE CDHPState
GO


SELECT * 

--UPDATE glsMenuItems  SET PageTitle = D.[New Page Title] , Sort = D.Sort

FROM glsMenuItems I
INNER JOIN (
SELECT DISTINCT Section = [New Section Label], [Page Title] = [Group Label], [New Page Title] = [New Group Label] , Sort = Sort1 FROM [Side Menu]) S
on  tblOfContentsHeadingName = S.Section AND tblOfContentsChartName = S.[Page Title]
ORDER BY I.ID



--SELECT * FROM [Side Menu]





