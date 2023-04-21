
/* Insert multiple Rows */
select * from region;
insert into region values
(5,'Southwestern'),
(6,'SouthEastern'),
(7,'NorthEastern');



/* Deleting certain rows */

delete from region where regionID > 4;



/* Deleting certain rows */

delete from region where regionID = 4 and RegionDescription = 'South';



/* Updating on certain condition */

update Region set RegionDescription = 'North' where RegionID = 1;