
USE CDHPState
GO 

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartC2a')
    DROP VIEW insuranceChartC2a
GO

CREATE VIEW insuranceChartC2a
AS 
	SELECT [State]= state, ghitot03, ghitot02, ghitot01, ghitot00
	FROM Inscovtotal
GO

GRANT ALL ON CDHPDE.insuranceChartC2a TO dbo

GRANT SELECT ON CDHPDE.insuranceChartC2a TO public

--~~~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartC2b')
    DROP VIEW insuranceChartC2b
GO

CREATE VIEW insuranceChartC2b
AS 
	SELECT [State]= state, ghimedid03, ghimedid02, ghimedid01, ghimedid00
	FROM Inscovtotal
GO

GRANT ALL ON CDHPDE.insuranceChartC2b TO dbo

GRANT SELECT ON CDHPDE.insuranceChartC2b TO public

--~~~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartC2c')
    DROP VIEW insuranceChartC2c
GO

CREATE VIEW insuranceChartC2c
AS 
	SELECT [State]= state, ghimedidpri03, ghimedidpri02, ghimedidpri01, ghimedidpri00
	FROM Inscovtotal
GO

GRANT ALL ON CDHPDE.insuranceChartC2c TO dbo

GRANT SELECT ON CDHPDE.insuranceChartC2c TO public

--~~~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartC2d')
    DROP VIEW insuranceChartC2d
GO

CREATE VIEW insuranceChartC2d
AS 
	SELECT [State]= state, ghimedir03, ghimedir02, ghimedir01, ghimedir00
	FROM Inscovtotal
GO

GRANT ALL ON CDHPDE.insuranceChartC2d TO dbo

GRANT SELECT ON CDHPDE.insuranceChartC2d TO public

--~~~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartC2e')
    DROP VIEW insuranceChartC2e
GO

CREATE VIEW insuranceChartC2e
AS 
	SELECT [State]= state, ghimedirpri03, ghimedirpri02, ghimedirpri01, ghimedirpri00
	FROM Inscovtotal
GO

GRANT ALL ON CDHPDE.insuranceChartC2e TO dbo

GRANT SELECT ON CDHPDE.insuranceChartC2e TO public

--~~~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartC2f')
    DROP VIEW insuranceChartC2f
GO

CREATE VIEW insuranceChartC2f
AS 
	SELECT [State]= state, ghimedidr03, ghimedidr02, ghimedidr01, ghimedidr00
	FROM Inscovtotal
GO

GRANT ALL ON CDHPDE.insuranceChartC2f TO dbo

GRANT SELECT ON CDHPDE.insuranceChartC2f TO public

--~~~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartC2g')
    DROP VIEW insuranceChartC2g
GO

CREATE VIEW insuranceChartC2g
AS 
	SELECT [State]= state, ghimil03, ghimil02, ghimil01, ghimil00
	FROM Inscovtotal
GO

GRANT ALL ON CDHPDE.insuranceChartC2g TO dbo

GRANT SELECT ON CDHPDE.insuranceChartC2g TO public

--~~~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartC2h')
    DROP VIEW insuranceChartC2h
GO

CREATE VIEW insuranceChartC2h
AS 
	SELECT [State]= state, ghinotcov03, ghinotcov02, ghinotcov01, ghinotcov00
	FROM Inscovtotal
GO

GRANT ALL ON CDHPDE.insuranceChartC2h TO dbo

GRANT SELECT ON CDHPDE.insuranceChartC2h TO public

--~~~
