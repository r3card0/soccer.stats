/* insert national teams qatar 2022
*/
INSERT INTO soccer.teams(team_name,teamType,insert_date)
select country_name, '1' teamType, (select now()) from mundo.countries;
