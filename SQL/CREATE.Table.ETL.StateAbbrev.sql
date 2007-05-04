USE CDHPState
GO

-- =============================================
-- Create table basic template
-- =============================================
IF EXISTS(SELECT name 
	  FROM 	 sysobjects 
	  WHERE  name = N'StateAbbrev' 
	  AND 	 type = 'U')
    DROP TABLE StateAbbrev
GO

CREATE TABLE StateAbbrev (
	ID tinyint IDENTITY NOT NULL,
	State char(2) NOT NULL,
    Long varchar(50) NULL
)
GO

INSERT StateAbbrev SELECT 'US', 'United States'

INSERT StateAbbrev SELECT 'AK', 'Alaska'

INSERT StateAbbrev SELECT 'AL', 'Alabama'

INSERT StateAbbrev SELECT 'AR', 'Arkansas'

INSERT StateAbbrev SELECT 'AZ', 'Arizona'

INSERT StateAbbrev SELECT 'CA', 'California'

INSERT StateAbbrev SELECT 'CO', 'Colorado'

INSERT StateAbbrev SELECT 'CT', 'Connecticut'

INSERT StateAbbrev SELECT 'DC', 'District of Columbia'

INSERT StateAbbrev SELECT 'DE', 'Deleware'

INSERT StateAbbrev SELECT 'FL', 'Florida'

INSERT StateAbbrev SELECT 'GA', 'Georgia'

INSERT StateAbbrev SELECT 'HI', 'Hawaii'

INSERT StateAbbrev SELECT 'IA', 'Iowa'

INSERT StateAbbrev SELECT 'ID', 'Idaho'

INSERT StateAbbrev SELECT 'IL', 'Illinois'

INSERT StateAbbrev SELECT 'IN', 'Indiana'

INSERT StateAbbrev SELECT 'KS', 'Kansas'

INSERT StateAbbrev SELECT 'KY', 'Kentuky'

INSERT StateAbbrev SELECT 'LA', 'Louisiana'

INSERT StateAbbrev SELECT 'MA', 'Massachusetts'

INSERT StateAbbrev SELECT 'MD', 'Maryland'

INSERT StateAbbrev SELECT 'ME', 'Maine'

INSERT StateAbbrev SELECT 'MI', 'Michigan'

INSERT StateAbbrev SELECT 'MN', 'Minnesota'

INSERT StateAbbrev SELECT 'MO', 'Missouri'

INSERT StateAbbrev SELECT 'MS', 'Mississippi'

INSERT StateAbbrev SELECT 'MT', 'Montana'

INSERT StateAbbrev SELECT 'NC', 'North Carolina'

INSERT StateAbbrev SELECT 'ND', 'North Dakota'

INSERT StateAbbrev SELECT 'NE', 'Nebraska'

INSERT StateAbbrev SELECT 'NH', 'New Hampshire'

INSERT StateAbbrev SELECT 'NJ', 'New Jersey'

INSERT StateAbbrev SELECT 'NM', 'New Mexico'

INSERT StateAbbrev SELECT 'NV', 'Nevada'

INSERT StateAbbrev SELECT 'NY', 'New York'

INSERT StateAbbrev SELECT 'OH', 'Ohio'

INSERT StateAbbrev SELECT 'OK', '0klahoma'

INSERT StateAbbrev SELECT 'OR', 'Oregon'

INSERT StateAbbrev SELECT 'PA', 'Pennsylvania'

INSERT StateAbbrev SELECT 'RI', 'Rhode Island'

INSERT StateAbbrev SELECT 'SC', 'South Carolina'

INSERT StateAbbrev SELECT 'SD', 'South Dakkota'

INSERT StateAbbrev SELECT 'TN', 'Tennessee'

INSERT StateAbbrev SELECT 'TX', 'Texas'

INSERT StateAbbrev SELECT 'UT', 'Utah'

INSERT StateAbbrev SELECT 'VA', 'Virginai'

INSERT StateAbbrev SELECT 'VT', 'Vermont'

INSERT StateAbbrev SELECT 'WA', 'Washington'

INSERT StateAbbrev SELECT 'WI', 'Wisconsin'

INSERT StateAbbrev SELECT 'WV', 'West Virginia'

INSERT StateAbbrev SELECT 'WY', 'Wyoming'
