USE CDHPState
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartBtwo_1')
    DROP VIEW insuranceChartBtwo_1
GO

CREATE VIEW insuranceChartBtwo_1
AS 
	SELECT [State]= state, ghitot03, ghitot02, ghitot01, ghitot00
	FROM inscovtotal
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartBtwo_2')
    DROP VIEW insuranceChartBtwo_2
GO

CREATE VIEW insuranceChartBtwo_2
AS 
	SELECT [State]= state, ghimedid03, ghimedid02, ghimedid01, ghimedid00
	FROM inscovtotal
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartBtwo_3')
    DROP VIEW insuranceChartBtwo_3
GO

CREATE VIEW insuranceChartBtwo_3
AS 
	SELECT [State]= state, ghimedidpri03, ghimedidpri02, ghimedidpri01, ghimedidpri00
	FROM inscovtotal
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartBtwo_4')
    DROP VIEW insuranceChartBtwo_4
GO

CREATE VIEW insuranceChartBtwo_4
AS 
	SELECT [State]= state, ghimedir03, ghimedir02, ghimedir01, ghimedir00
	FROM inscovtotal
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartBtwo_5')
    DROP VIEW insuranceChartBtwo_5
GO

CREATE VIEW insuranceChartBtwo_5
AS 
	SELECT [State]= state, ghimedirpri03, ghimedirpri02, ghimedirpri01, ghimedirpri00
	FROM inscovtotal
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartBtwo_6')
    DROP VIEW insuranceChartBtwo_6
GO

CREATE VIEW insuranceChartBtwo_6
AS 
	SELECT [State]= state, ghimedidr03, ghimedidr02, ghimedidr01, ghimedidr00
	FROM inscovtotal
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartBtwo_7')
    DROP VIEW insuranceChartBtwo_7
GO

CREATE VIEW insuranceChartBtwo_7
AS 
	SELECT [State]= state, ghimil03, ghimil02, ghimil01, ghimil00
	FROM inscovtotal
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartBtwo_8')
    DROP VIEW insuranceChartBtwo_8
GO

CREATE VIEW insuranceChartBtwo_8
AS 
	SELECT [State]= state, ghinotcov03, ghinotcov02, ghinotcov01, ghinotcov00
	FROM inscovtotal
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~