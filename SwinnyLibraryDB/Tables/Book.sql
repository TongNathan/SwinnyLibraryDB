CREATE TABLE [dbo].[Book]
(
	[ISBN] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [title] NVARCHAR(MAX) NOT NULL, 
    [yearPublished] INT NOT NULL,
	[studentID] NVARCHAR(50) NULL,
	[authorID] INT, 
	constraint FK_STUDENT FOREIGN KEY (studentID) references student(studentID), 
	constraint FK_AUTHOR FOREIGN KEY (authorID) REFERENCES AUTHOR(authorID)
)
