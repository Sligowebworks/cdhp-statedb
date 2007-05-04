USE CDHPState
GO

-- =============================================
-- Create table basic template
-- =============================================
IF EXISTS(SELECT name 
	  FROM 	 sysobjects 
	  WHERE  name = N'tblCharts' 
	  AND 	 type = 'U')
    DROP TABLE tblCharts
GO

CREATE TABLE tblCharts (
	ID int IDENTITY NOT NULL,
	MenuItemKey int NULL,
	SQLView varchar(50) NOT NULL,
	SourceTable varchar(50) NOT NULL,	--import table that view is built on
	tblOfContentsChartName varchar(300) NULL,	-- import name corresponding to a menu item
	tblOfContentsSubChart varchar(30) NULL,
	Title varchar(150) NULL,
	Sort tinyint default 0,
	Active bit default 1
)
GO

