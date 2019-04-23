/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF '$(LoadTestData)' = 'true'

BEGIN 

DELETE FROM STUDENT;
DELETE FROM BOOK;
DELETE FROM AUTHOR;

INSERT INTO STUDENT (studentID, firstName, lastName, email, phoneNumber) VALUES 
('s12345678', 'Fred', 'Flintstone', '12345678@student.swin.edu.au', 0400555111),
('s23456789', 'Barney', 'Rubble', '23456789@student.swin.edu.au', 0400555222),
('s34567890', 'Bam-Bam', 'Rubble', '34567890@student.swin.edu.au', 0400555333);

INSERT INTO BOOK (ISBN, title, yearPublished) VALUES

(978-3-16-148410-0,	'Relationships with Databases, the ins and outs', 1970),
(978-3-16-148410-1, 'Normalisation, how to make a database geek fit in.', 1973),
(978-3-16-148410-2, 'TCP/IP, the protocolfor the masses.', 1983),
(978-3-16-148410-3, 'The Man, the Bombe, andthe Enigma.', 1940);

INSERT INTO AUTHOR (authorID, authorFirstName, authorLastName, authorTFN) VALUES

(197032567, 'Edgar', 'Codd', 150111222),
(197332567, 'Edgar', 'Codd', 150111222),
(198376543, 'Vinton', 'Cerf', 150222333),
(194012345, 'Alan', 'Turing', 150333444);

END;