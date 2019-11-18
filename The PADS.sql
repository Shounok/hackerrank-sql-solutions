/*
The COUNT() function returns the number of records returned by a select query.
The LOWER() function converts a string to lower-case.
The SUBSTRING() function extracts a substring from a string (starting at any position).
Substring Syntaxt:	SUBSTRING(string, start, length)

*/
SELECT CONCAT (Name,'(', SUBSTR(Occupation,1,1),')') as Name
FROM OCCUPATIONS ORDER BY Name;

SELECT CONCAT('There are a total of ',COUNT(Occupation),' ',LOWER(Occupation),'s.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation), Occupation
