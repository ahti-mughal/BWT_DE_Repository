-- Practice following DML commands in SSMS:

-- 1 - INSERT:
--     • Identity
--     • Creating a table from another table
--     • Inserting rows from one table to another

select * into newCategories from Categories

select * from newCategories


-- 2 - UPDATE

update newCategories set Description = 'Cheese, Milk and Yoghurt etc' where CategoryID=4

-- 3 - DELETE:
--     • Truncate

	truncate table newCategories
--     • Difference between delete & truncate

-- Truncate is a DDL command that empties the complete table but it doesn't 
-- delete the table structure, it comparatively quicker that the delete command.
-- On the other hand delete command is a DML command that allows to delete individual or 
-- multiple records from the table


