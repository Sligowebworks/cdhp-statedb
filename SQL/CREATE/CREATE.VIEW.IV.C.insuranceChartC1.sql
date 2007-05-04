USE CDHPState
GO


IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartC1a')
    DROP VIEW insuranceChartC1a
GO

CREATE VIEW insuranceChartC1a
AS 
	SELECT [State]= state, totpop03, totpop02, totpop01, totpop00
	FROM Inscovtotal
GO

GRANT ALL ON CDHPDE.insuranceChartC1a TO dbo

GRANT SELECT ON CDHPDE.insuranceChartC1a TO public

--~~~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartC1b')
    DROP VIEW insuranceChartC1b
GO

CREATE VIEW insuranceChartC1b
AS 
	SELECT [State]= state, phitot03, phitot02, phitot01, phitot00, ghitot03, ghitot02, ghitot01, ghitot00
	FROM Inscovtotal
GO

GRANT ALL ON CDHPDE.insuranceChartC1b TO dbo

GRANT SELECT ON CDHPDE.insuranceChartC1b TO public

--~~~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartC1c')
    DROP VIEW insuranceChartC1c
GO

CREATE VIEW insuranceChartC1c
AS 
	SELECT [State]= state, phitot03, phitot02, phitot01, phitot00
	FROM Inscovtotal
GO

GRANT ALL ON CDHPDE.insuranceChartC1c TO dbo

GRANT SELECT ON CDHPDE.insuranceChartC1c TO public

--~~~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartC1d')
    DROP VIEW insuranceChartC1d
GO

CREATE VIEW insuranceChartC1d
AS 
	SELECT [State]= state, phiemp03, phiemp02, phiemp01, phiemp00
	FROM Inscovtotal
GO

GRANT ALL ON CDHPDE.insuranceChartC1d TO dbo

GRANT SELECT ON CDHPDE.insuranceChartC1d TO public

--~~~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartC1e')
    DROP VIEW insuranceChartC1e
GO

CREATE VIEW insuranceChartC1e
AS 
	SELECT [State]= state, phiownemp03, phiownemp02, phiownemp01, phiownemp00
	FROM Inscovtotal
GO

GRANT ALL ON CDHPDE.insuranceChartC1e TO dbo

GRANT SELECT ON CDHPDE.insuranceChartC1e TO public

--~~~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartC1f')
    DROP VIEW insuranceChartC1f
GO

CREATE VIEW insuranceChartC1f
AS 
	SELECT [State]= state, phidir03, phidir02, phidir01, phidir00
	FROM Inscovtotal
GO

GRANT ALL ON CDHPDE.insuranceChartC1f TO dbo

GRANT ALL ON CDHPDE.insuranceChartC1f TO public

--~~~
