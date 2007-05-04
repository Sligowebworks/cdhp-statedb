

CREATE VIEW Menu
AS
(
SELECT MenuSectionKey, I.ID, PageName, PageTitle,
Section = S.Label,  
I.Label,
 SectSort = S.Sort, ItemSort = I.Sort,
S.tblOfContentsHeadingName,
I.tblOfContentsChartName
FROM glsMenuSections S INNER JOIN glsMenuItems I on I.MenuSectionKey = S.ID

)

GO

SELECT * FROM Menu

