use bwttaskdb
--SCD2 Implementation
use bwttaskdb;
select * from fellows

alter table fellows 
add valid_from DateTime, valid_to DateTime, IsCurrent int;

UPDATE fellows
SET valid_to = GETDATE(), IsCurrent = 0
WHERE course_id = 3;

insert into fellows(fellow_name, fellow_email, fellow_number, fellow_location, course_id, address, valid_from, valid_to, IsCurrent) 
values ('UsmanKhan', 'usmannasir12@gmail.com', 3035413330, 'LHR', 3, 'LHR', GETDATE(), NULL, 1);




