USE CDHPState
GO

-- =============================================
-- Create table basic template
-- =============================================
IF EXISTS(SELECT name 
	  FROM 	 sysobjects 
	  WHERE  name = N'jctMenuViews' 
	  AND 	 type = 'U')
    DROP TABLE jctMenuViews
GO

CREATE TABLE jctMenuViews (
	ID int IDENTITY NOT NULL,
	MenuKey int NOT NULL,
	ViewName varchar(50) NULL
)
GO

