/* 1. Clustered Index : 
Clustered index is created only when both the following conditions satisfy – 

The data or file, that you are moving into secondary memory should be in sequential or sorted order.
There should be a key value, meaning it can not have repeated values. 
 
Whenever you apply clustered indexing in a table, it will perform sorting in that table only. You can create only one clustered index in a table like primary key. Clustered index is as same as dictionary where the data is arranged by alphabetical order. 

In clustered index, index contains pointer to block but not direct data.

If you apply primary key to any column, then automatically it will become clustered index. 

You can have only one clustered index in one table, but you can have one clustered index on multiple columns, 
and that type of index is called composite index. 

2. Non-clustered Index : 
Non-Clustered Index is similar to the index of a book. The index of a book consists of a chapter name and page number, if you want to read any topic or chapter then you can directly go to that page by using index of that book. No need to go through each and every page of a book. 

The data is stored in one place, and index is stored in another place. Since, the data and non-clustered index is stored separately, then you can have multiple non-clustered index in a table. 

In non-clustered index, index contains the pointer to data. 

A table can have multiple non-clustered index.
*/
 

/* SQL CREATE INDEX Statement
The CREATE INDEX statement is used to create indexes in tables.

Indexes are used to retrieve data from the database more quickly than otherwise. 
The users cannot see the indexes, they are just used to speed up searches/queries.
*/

CREATE INDEX idx_lastname
ON employees (LastName);

--If you want to create an index on a combination of columns, you can list the column names within the parentheses, separated by commas:

CREATE INDEX idx_name
ON employees (LastName, FirstName);

/*
DROP INDEX Statement
The DROP INDEX statement is used to delete an index in a table.
*/

DROP INDEX employees.idx_lastname;





