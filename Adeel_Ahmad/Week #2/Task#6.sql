CREATE DATABASE FreelanceRev
GO
CREATE TABLE Clients (
ClientID int NOT NULL PRIMARY KEY
,ClientNames char(20) NOT NULL
,Gender char(1) CONSTRAINT Df_Gender DEFAULT 'M'
,Emails varchar(100) UNIQUE
,Addresses varchar(500)
)
GO
ALTER TABLE Clients ADD Age int
GO
ALTER TABLE Clients
ADD CONSTRAINT Age CHECK (Age >= 18 AND Age <= 65);
ADD CONSTRAINT Gender DEFAULT 'M';

CREATE TABLE SubscriptionDetails
(
    SubID int PRIMARY KEY,
    ClientID int FOREIGN KEY REFERENCES Clients(ClientID),
    PurchaseHistory varchar(100),
    Price decimal(10,2)
)
GO
DROP TABLE SubscriptionDetails
GO


