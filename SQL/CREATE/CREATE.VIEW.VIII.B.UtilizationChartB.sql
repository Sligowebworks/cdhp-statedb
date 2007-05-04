USE CDHPState
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'UtilizationChartB1')
    DROP VIEW UtilizationChartB1
GO

CREATE VIEW UtilizationChartB1
AS 
	SELECT [State] =  state,
stappincden2000incrate
,stappincden2000stradpro
,stappincden2000formcoal
,stappincden2000edupat
,stappincden2000enrman
,stappincden2000incrnet
,stappincden2000incrhyg
,stappincden2000deplunit
,stappincden2000usephys
,stappincden2000devsbprog
,stappincden2000encvol
,stappincden2000densch
,stappincden2000peddenttr
,stappincden2000redoverh
	FROM au
GO--,~`~--,~`~--,~`~--,~`~--,~`~--,~`~
