CREATE TABLE [dbo].[Author]
(
	[authorID] INT NOT NULL PRIMARY KEY, 
    [authorFirstName] NVARCHAR(50) NOT NULL, 
    [authorLastName] NVARCHAR(50) NOT NULL, 
    [authorTFN] NVARCHAR(50) NOT NULL
)
