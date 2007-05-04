USE CDHPState
GO

-- =============================================
-- Create table basic template
-- =============================================
IF EXISTS(SELECT name 
	  FROM 	 sysobjects 
	  WHERE  name = N'glsColumnLabels' 
	  AND 	 type = 'U')
    DROP TABLE glsColumnLabels
GO

CREATE TABLE glsColumnLabels
(
	ID int IDENTITY,
	ViewName varchar(200) NOT NULL,
	ColShortName varchar(200) NOT NULL,
	ColLongName varchar (200) NOT NULL default '',
	ColSourceHref varchar (100) NOT NULL default '',
	ColSourceLabel varchar(255) NOT NULL default '',
)
GO


SELECT * FROM glsColumnLabels

