/*
CASE Syntax is like this: 
CASE [value-to-be-compared]
    WHEN [argument] THEN [expression]
    WHEN [argument_2] THEN [expression_2]
    ..
    END
*/
SET @doc=0, @sing=0, @prof=0, @act=0;

SELECT MIN(Doctor), MIN(Professor), MIN(Singer), MIN(Actor) FROM 
(
    SELECT
    CASE OCCUPATION 
    WHEN 'Doctor' THEN @doc := @doc +1
    WHEN 'Professor' THEN @prof := @prof+1
    WHEN 'Singer' THEN @sing := @sing+1
    WHEN 'Actor' THEN @act := @act+1    
    END 
    AS Rowline,
    
    CASE WHEN Occupation = 'Doctor' THEN Name END AS Doctor,
    CASE WHEN Occupation = 'Professor' THEN Name END AS Professor, 
    CASE WHEN Occupation = 'Singer' THEN Name END AS Singer,
    CASE WHEN Occupation = 'Actor' THEN Name END AS Actor
    FROM OCCUPATIONS ORDER BY Name
) AS tbl 
GROUP BY Rowline;