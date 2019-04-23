CREATE TABLE [dbo].[Student]
(
	[studentID] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [firstName] NVARCHAR(50) NOT NULL, 
    [lastName] NVARCHAR(50) NOT NULL, 
    [email] NVARCHAR(50) NOT NULL, 
    [phoneNumber] NVARCHAR(50) NOT NULL
)
