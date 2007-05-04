USE CDHPState
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartA1')
    DROP VIEW insuranceChartA1
GO

CREATE VIEW insuranceChartA1
AS 
	SELECT [State]= state, totchbel200less1903, totchbel200less1902, totchbel200less1901, totchbel200less1900
	FROM insurance
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartA2')
    DROP VIEW insuranceChartA2
GO

CREATE VIEW insuranceChartA2
AS 
	SELECT [State]= state, totchbel200povless1903, totchbel200perc02, totchbel200perc01, totchbel200perc00
	FROM insurance
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartA3')
    DROP VIEW insuranceChartA3
GO

CREATE VIEW insuranceChartA3
AS 
	SELECT [State]= state, totchbel200perc03, totchbel200perc02, totchbel200perc01, totchbel200perc00
	FROM insurance
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartA4')
    DROP VIEW insuranceChartA4
GO

CREATE VIEW insuranceChartA4
AS 
	SELECT [State]= state, inscovtot03, inscovtot02, inscovtot01, inscovtot00
	FROM insurance
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartA5')
    DROP VIEW insuranceChartA5
GO

CREATE VIEW insuranceChartA5
AS 
	SELECT [State]= state, inscovperc03, inscovperc02, inscovperc01, inscovperc00
	FROM insurance
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartA6')
    DROP VIEW insuranceChartA6
GO

CREATE VIEW insuranceChartA6
AS 
	SELECT [State]= state, noinscovtot03, noinscovtot02, noinscovtot01, noinscovtot00
	FROM insurance
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartA7')
    DROP VIEW insuranceChartA7
GO

CREATE VIEW insuranceChartA7
AS 
	SELECT [State]= state, noinscovperc03, inscovperc0no2, inscovperc0no1, inscovpercno00
	FROM insurance
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~