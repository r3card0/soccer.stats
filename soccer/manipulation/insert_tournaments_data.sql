/*
-- ttype --
World Cup   1
League      2
Eurocup     3
Copa America    4
Concacaf    5

-- tlevel --
0   International
1   main league
2   league second division
3   league amateour
*/
INSERT INTO tournaments(tname,ttype,tlevel,insertDate)
VALUES('Qatar 2022',1,0,(SELECT now()));