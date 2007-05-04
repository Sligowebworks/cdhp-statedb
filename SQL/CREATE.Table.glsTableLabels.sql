USE CDHPState
GO

-- =============================================
-- Create table basic template
-- =============================================
IF EXISTS(SELECT name 
	  FROM 	 sysobjects 
	  WHERE  name = N'glsTableLabels' 
	  AND 	 type = 'U')
    DROP TABLE glsTableLabels
GO

CREATE TABLE glsTableLabels (
	ID int IDENTITY NOT NULL,
	Title varchar(150) NOT NULL,
	ViewName varchar(50) NOT NULL
)
GO

