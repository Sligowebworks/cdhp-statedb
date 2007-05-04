USE CDHPstate
Go

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'SafetynetpubhealthChartC1')
    DROP VIEW SafetynetpubhealthChartC1
GO

CREATE VIEW SafetynetpubhealthChartC1
AS 
	SELECT [State]= state, oralhealthed2004, oralhealthed2003, oralhealthed2002, oralhealthed2001
	FROM Safetynetpubhealth
GO

--~,~`~,~`~,~`

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'SafetynetpubhealthChartC2')
    DROP VIEW SafetynetpubhealthChartC2
GO

CREATE VIEW SafetynetpubhealthChartC2
AS 
	SELECT [State]= state, smokespit2004, smokespit2003, smokespit2002, smokespit2001
	FROM Safetynetpubhealth
GO

--~,~`~,~`~,~`

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'SafetynetpubhealthChartC3')
    DROP VIEW SafetynetpubhealthChartC3
GO

CREATE VIEW SafetynetpubhealthChartC3
AS 
	SELECT [State]= state, percpubfluor2004, percpubfluor2003, percpubfluor2002, percpubfluor2001, percpubfluor2000
	FROM Safetynetpubhealth
GO

--~,~`~,~`~,~`

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'SafetynetpubhealthChartC4')
    DROP VIEW SafetynetpubhealthChartC4
GO

CREATE VIEW SafetynetpubhealthChartC4
AS 
	SELECT [State]= state, fedqualheal1242004, fedqualheal1242003, fedqualheal1242002, fedqualheal1242001, fedqualheal1242000
	FROM Safetynetpubhealth
GO

--~,~`~,~`~,~`

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'SafetynetpubhealthChartC5')
    DROP VIEW SafetynetpubhealthChartC5
GO

CREATE VIEW SafetynetpubhealthChartC5
AS 
	SELECT [State]= state, numrurclin2004, numrurclin2003, numrurclin2002, numrurclin2001, numrurclin2000
	FROM Safetynetpubhealth
GO
