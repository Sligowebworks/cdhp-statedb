USE CDHPState
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartBone_1')
    DROP VIEW insuranceChartBone_1
GO

CREATE VIEW insuranceChartBone_1
AS 
	SELECT [State]= state, totpop03, totpop02, totpop01, totpop00
	FROM inscovtotal
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartBone_2')
    DROP VIEW insuranceChartBone_2
GO

CREATE VIEW insuranceChartBone_2
AS 
	SELECT [State]= state, phitot03, phitot02, phitot01, phitot00
	FROM inscovtotal
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartBone_3')
    DROP VIEW insuranceChartBone_3
GO

CREATE VIEW insuranceChartBone_3
AS 
	SELECT [State]= state, phiemp03, phiemp02, phiemp01, phiemp00
	FROM inscovtotal
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartBone_4')
    DROP VIEW insuranceChartBone_4
GO

CREATE VIEW insuranceChartBone_4
AS 
	SELECT [State]= state, phiownemp03, phiownemp02, phiownemp01, phiownemp00
	FROM inscovtotal
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'insuranceChartBone_5')
    DROP VIEW insuranceChartBone_5
GO

CREATE VIEW insuranceChartBone_5
AS 
	SELECT [State]= state, phidir03, phidir02, phidir01, phidir00
	FROM inscovtotal
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~