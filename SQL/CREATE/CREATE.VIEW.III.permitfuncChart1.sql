
USE CDHPState
GO

IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'permitfuncChart1')
    DROP VIEW permitfuncChart1
GO

CREATE VIEW permitfuncChart1
AS 
	SELECT [State]= state, pro1, xrays, locanes, topanes, floride, pitseal, rootplan, softcuret, adminn20, studycastimp, placeperiod, removeperiod, placesut, removesut, applycavlin, placetemprest, removetemprest, placeamalrest, carveamalrest, finishamalrest, polishamalrest, placecompres
	FROM permitfunc
GO
