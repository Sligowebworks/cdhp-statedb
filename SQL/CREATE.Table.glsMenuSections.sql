USE CDHPState
GO

-- =============================================
-- Create table basic template
-- =============================================
IF EXISTS(SELECT name 
	  FROM 	 sysobjects 
	  WHERE  name = N'glsMenuSections' 
	  AND 	 type = 'U')
    DROP TABLE glsMenuSections
GO

CREATE TABLE glsMenuSections (
	ID tinyint IDENTITY NOT NULL,
	Label varchar(100) NOT NULL default '',
	tblOfContentsHeadingName varchar(100) NULL, 	-- coresponds to import table heading field
	Sort tinyint NULL default 0,
	Active bit NULL default 1
	
)
GO

INSERT
glsMenuSections
SELECT DISTINCT [Label] = Heading, [tblOfContentsHeadingName] = Heading, 0, 1 FROM tblOfContents

GO

UPDATE glsMenuSections  SET Label = [New Section Label] , glsMenuSections.Sort = feedback.Sort
FROM glsMenuSections
INNER JOIN 
( SELECT DISTINCT [Section Label], [New Section Label], Sort FROM
[Side Menu] ) feedback
on Label = [Section Label]
GO

SELECT * FROM glsMenuSections
