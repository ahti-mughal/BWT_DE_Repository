
--creating a database

CREATE DATABASE bytewise;

--altering a database

ALTER DATABASE bytewise SET READ_WRITE;  	-- Change the database to read-write mode
GO
ALTER DATABASE bytewise SET OFFLINE; 	 	-- Take the database offline
GO
ALTER DATABASE bytewise SET ONLINE;  		-- Bring the database back online
GO
ALTER DATABASE bytewise SET SINGLE_USER; 	-- Set the database to single-user mode
GO
ALTER DATABASE bytewise SET MULTI_USER;  	-- Set the database to multi-user mode
GO

--droping a database

DROP DATABASE bytewise;