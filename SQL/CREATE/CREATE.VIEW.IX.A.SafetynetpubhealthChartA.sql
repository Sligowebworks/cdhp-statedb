USE CDHPState
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'SafetynetpubhealthChartA1')
    DROP VIEW SafetynetpubhealthChartA1
GO

CREATE VIEW SafetynetpubhealthChartA1
AS 
	SELECT [State]= state, dendirsta2002
	FROM Safetynetpubhealth
GO


IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'SafetynetpubhealthChartA2')
    DROP VIEW SafetynetpubhealthChartA2
GO

CREATE VIEW SafetynetpubhealthChartA2
AS 
	SELECT [State]= state, accesscare2004, accesscare2003, accesscare2002, accesscare2001
	FROM Safetynetpubhealth
GO


IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'SafetynetpubhealthChartA3')
    DROP VIEW SafetynetpubhealthChartA3
GO

CREATE VIEW SafetynetpubhealthChartA3
AS 
	SELECT [State]= state, denscreprog2004, denscreprog2003, denscreprog2002, denscreprog2001
	FROM Safetynetpubhealth
GO


IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'SafetynetpubhealthChartA4')
    DROP VIEW SafetynetpubhealthChartA4
GO

CREATE VIEW SafetynetpubhealthChartA4
AS 
	SELECT [State]= state, dentsealprog2004, dentsealprog2003, dentsealprog2002, dentsealprog2001
	FROM Safetynetpubhealth
GO


IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'SafetynetpubhealthChartA5')
    DROP VIEW SafetynetpubhealthChartA5
GO

CREATE VIEW SafetynetpubhealthChartA5
AS 
	SELECT [State]= state, eccbbtdprev2004, eccbbtdprev2003, eccbbtdprev2002, eccbbtdprev2001
	FROM Safetynetpubhealth
GO







