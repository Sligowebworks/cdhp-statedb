USE CDHPState
GO

-- =============================================
-- Create table basic template
-- =============================================
IF EXISTS(SELECT name 
	  FROM 	 sysobjects 
	  WHERE  name = N'glsMenuItems' 
	  AND 	 type = 'U')
    DROP TABLE glsMenuItems
GO

CREATE TABLE glsMenuItems (
	ID int IDENTITY NOT NULL,
	Label varchar(300) NOT NULL,
	tblOfContentsChartName varchar(300) NOT NULL,
	tblOfContentsHeadingName varchar(100) NOT NULL,
	MenuSectionKey tinyint NOT NULL,
	PageName varchar(100) NULL,
	PageTitle varchar(500) NULL,
	Sort tinyint NOT NULL default 0,
	Active bit NOT NULL default 1
)
GO

INSERT
glsMenuItems
SELECT DISTINCT [Label] = (CASE WHEN Chart = '' THEN Heading ELSE Chart END), 
[tblOfContentsChartName] = RTRIM(Chart),
[tblOfContentsHeadingName] = RTRIM(Heading),
[MenuSectionKey] = gls.ID, 
[PageName] = NULL,
[PageTitle] = NULL,
0, 1
FROM tblOfContents
INNER JOIN glsMenuSections gls
on gls.tblOfContentsHeadingName = Heading
GO

UPDATE glsMenuItems
SET PageName = 'Page' + cast(ID as varchar(2));

/*
UPDATE glsMenuItems
SET PageTitle = 'Total Population'
WHERE tblOfContentsHeadingName = 'Demographics' AND tblOfContentsChartName = 'Chart A';

UPDATE glsMenuItems
SET PageTitle = 'Child Population by Age'
WHERE tblOfContentsHeadingName = 'Demographics' AND tblOfContentsChartName = 'Chart B';

UPDATE glsMenuItems
SET PageTitle = 'Child Population by Race/Ethnicity'
WHERE tblOfContentsHeadingName = 'Demographics' AND tblOfContentsChartName = 'Chart C';

UPDATE glsMenuItems
SET PageTitle = 'Poverty rate for children 18 and under '
WHERE tblOfContentsHeadingName = 'Demographics' AND tblOfContentsChartName = 'Chart D';
*/

GO

SELECT * FROM glsMenuItems
--WHERE tblOfContentsHeadingName = 'Demographics' AND tblOfContentsChartName = 'Chart C'

