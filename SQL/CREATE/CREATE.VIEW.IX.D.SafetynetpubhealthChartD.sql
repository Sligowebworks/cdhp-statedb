USE CDHPState
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'SafetynetpubhealthChartD1')
    DROP VIEW SafetynetpubhealthChartD1
GO

CREATE VIEW SafetynetpubhealthChartD1
AS 
	SELECT [State]= state, commlowclin2004, commlowclin2003, commlowclin2002, commlowclin2001
	FROM Safetynetpubhealth
GO

--~,~`~,~`~,~`

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'SafetynetpubhealthChartD2')
    DROP VIEW SafetynetpubhealthChartD2
GO

CREATE VIEW SafetynetpubhealthChartD2
AS 
	SELECT [State]= state, schdenclin2004, schdenclin2003, schdenclin2002, schdenclin2001
	FROM Safetynetpubhealth
GO

--~,~`~,~`~,~`

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'SafetynetpubhealthChartD3')
    DROP VIEW SafetynetpubhealthChartD3
GO

CREATE VIEW SafetynetpubhealthChartD3
AS 
	SELECT [State]= state, schhealcenoral2004, schhealcenoral2003, schhealcenoral2002, schhealcenoral2001
	FROM Safetynetpubhealth
GO

--~,~`~,~`~,~`

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'SafetynetpubhealthChartD4')
    DROP VIEW SafetynetpubhealthChartD4
GO

CREATE VIEW SafetynetpubhealthChartD4
AS 
	SELECT [State]= state, localhealwden2004, localhealwden2003, localhealwden2002, localhealwden2001
	FROM Safetynetpubhealth
GO

--~,~`~,~`~,~`

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'SafetynetpubhealthChartD5')
    DROP VIEW SafetynetpubhealthChartD5
GO

CREATE VIEW SafetynetpubhealthChartD5
AS 
	SELECT [State]= state
		, fedqualheal1242004
		, fedqualheal1242003
		, fedqualheal1242002
		, fedqualheal1242001
		, fedqualheal1242000
	FROM Safetynetpubhealth
GO

--~,~`~,~`~,~`

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'SafetynetpubhealthChartD6')
    DROP VIEW SafetynetpubhealthChartD6
GO

CREATE VIEW SafetynetpubhealthChartD6
AS 
	SELECT [State]= state
		,  numrurclin2004 
		,  numrurclin2003 
		,  numrurclin2002 
		,  numrurclin2001 
		, numrurclin2000
	FROM Safetynetpubhealth
GO


