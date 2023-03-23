Create Table personData (
    PersonID int,
    PRIMARY KEY (PersonID),
    FullName varchar(255),
    Age int
);

Alter Table personData
ADD Email varchar(255);
Alter Table personData
ADD Phone int;
Alter Table personData
DROP COLUMN Phone;

-- By default, a column can hold NULL values.
-- The NOT NULL constraint enforces a column to NOT accept NULL values.
-- This enforces a field to always contain a value, which means that you cannot insert a new record, or update a record without adding a value to this field.

Alter Table personData
ADD Height int NOT NULL;

-- The UNIQUE constraint ensures that all values in a column are different.
-- Both the UNIQUE and PRIMARY KEY constraints provide a guarantee for uniqueness for a column or set of columns.
-- A PRIMARY KEY constraint automatically has a UNIQUE constraint.
-- However, you can have many UNIQUE constraints per table, but only one PRIMARY KEY constraint per table.

Alter Table personData
ADD UNIQUE (NIC_NO);

-- The DEFAULT constraint is used to set a default value for a column.
-- The default value will be added to all new records, if no other value is specified.

Alter Table personData
Add City varchar(255) DEFAULT 'Sandnes';

-- The CHECK constraint is used to limit the value range that can be placed in a column.
-- If you define a CHECK constraint on a column it will allow only certain values for this column.
-- If you define a CHECK constraint on a table it can limit the values in certain columns based on values in other columns in the row.

ALTER TABLE personData
ADD CHECK (Age>=18);

-- The PRIMARY KEY constraint uniquely identifies each record in a table.
-- Primary keys must contain UNIQUE values, and cannot contain NULL values.
-- A table can have only ONE primary key; and in the table, this primary key can consist of single or multiple columns (fields).

ALTER TABLE personData
ADD PRIMARY KEY (BodyWeight);

-- The FOREIGN KEY constraint is used to prevent actions that would destroy links between tables.
-- A FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table.
-- The table with the foreign key is called the child table, and the table with the primary key is called the referenced or parent table.

CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES personData(PersonID)
);

Create Table CitiesInPak(
    fullname VARCHAR(255)
);

Create Table countries(
    fullname VARCHAR(255)
);

DROP Table CitiesInPak


