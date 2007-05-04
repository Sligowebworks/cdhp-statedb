USE CDHPState
GO

-- =============================================
-- Create view basic template
-- =============================================
IF EXISTS (SELECT TABLE_NAME 
	   FROM   INFORMATION_SCHEMA.VIEWS 
	   WHERE  TABLE_NAME = N'C2DentEdu')
    DROP VIEW C2DentEdu
GO

CREATE VIEW C2DentEdu
AS 
	SELECT
	[State] = F1, 
	[% female dental graduates 1996-97] = femaledentgrad9697,
	[% non-hispanic white dental graduates 1996-97] = nonhispwhdentgrad9697,
	[% black/african american dental graduates 1996-97] = blackdentgrad9697,
	[% hispanic/latino dental graduates 1996-97] = hispdentgrad9697,
	[% asian/pacific islander dental graduates 1996-97] = asiandentgrad9697,
	[% American Indian/Alaskan native dental graduates 1996-97] = indiandentgrad9697
	
	FROM Workforce
GO

