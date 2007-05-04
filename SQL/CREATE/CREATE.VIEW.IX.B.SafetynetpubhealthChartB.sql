USE CDHPState
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'SafetynetpubhealthChartB1')
    DROP VIEW SafetynetpubhealthChartB1
GO

CREATE VIEW SafetynetpubhealthChartB1
AS 
	SELECT [State]= state, fluorcomm2004, fluorcomm2003, fluorcomm2002, fluorcomm2001
	FROM Safetynetpubhealth
GO

--~,~`~,~`~,~`

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'SafetynetpubhealthChartB2')
    DROP VIEW SafetynetpubhealthChartB2
GO

CREATE VIEW SafetynetpubhealthChartB2
AS 
	SELECT [State]= state, fluormouth2004, fluormouth2003, fluormouth2002, fluormouth2001
	FROM Safetynetpubhealth
GO

--~,~`~,~`~,~`

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'SafetynetpubhealthChartB3')
    DROP VIEW SafetynetpubhealthChartB3
GO

CREATE VIEW SafetynetpubhealthChartB3
AS 
	SELECT [State]= state, fluorsupp2004, fluorsupp2003, fluorsupp2002, fluorsupp2001
	FROM Safetynetpubhealth
GO

--~,~`~,~`~,~`

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'SafetynetpubhealthChartB4')
    DROP VIEW SafetynetpubhealthChartB4
GO

CREATE VIEW SafetynetpubhealthChartB4
AS 
	SELECT [State]= state, fluorvarn2004, fluorvarn2003, fluorvarn2002, fluorvarn2001
	FROM Safetynetpubhealth
GO

--~,~`~,~`~,~`

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'SafetynetpubhealthChartB5')
    DROP VIEW SafetynetpubhealthChartB5
GO

CREATE VIEW SafetynetpubhealthChartB5
AS 
	SELECT [State]= state, mguard2004, mguard2003, mguard2002, mguard2001
	FROM Safetynetpubhealth
GO

--~,~`~,~`~,~`

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'SafetynetpubhealthChartB6')
    DROP VIEW SafetynetpubhealthChartB6
GO

CREATE VIEW SafetynetpubhealthChartB6
AS 
	SELECT [State]= state, needsass2004, needsass2003, needsass2002, needsass2001
	FROM Safetynetpubhealth
GO

--~,~`~,~`~,~`

