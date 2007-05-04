
USE CDHPState
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'permitfuncChart2')
    DROP VIEW permitfuncChart2
GO

CREATE VIEW permitfuncChart2
AS 
	SELECT [State]= state, pro2, xray2, locanes2, topanes2, flouride2, pitfisseal2, rootplan2, softcuret2, adminn2o2, studycast2, placeperiod2, removeperiod2, placesut2, removesut2, applycanlin2, placetemprest2, removetemprest2, placeamalrest2, carveamalrest2, finishamalrest2, polishamalrest2, plfinressilrest2
	FROM permitfunc
GO
