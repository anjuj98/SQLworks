
CREATE DATABASE customers;

CREATE TABLE tblcustomerDetails(customerId varchar(20),customerName varchar(25),customerAge int);


CREATE PROCEDURE SPI_CustomerDetails
@customerId varchar(20),
@customerName varchar(25),
@customerAge int

AS
   INSERT INTO tblcustomerDetails(customerId,customerName,customerAge)
   VALUES(@customerId,@customerName,@customerAge);
GO

EXEC  SPI_CustomerDetails @customerId='1',@customerName='Anju',@customerAge='24'
EXEC  SPI_CustomerDetails @customerId='2',@customerName='Arjun',@customerAge='17'



CREATE PROCEDURE SPU_CustomerDetails
@customerId varchar(20),
@customerName varchar(25),
@customerAge int

AS
   UPDATE  tblcustomerDetails SET customerName=@customerName,customerAge=@customerAge WHERE customerId=@customerId;
GO

EXEC  SPU_CustomerDetails @customerId='1',@customerName='Arya',@customerAge='24'



CREATE PROCEDURE SPD_CustomerDetails
@customerId varchar(20)

AS
   DELETE FROM tblcustomerDetails  WHERE customerId=@customerId;
GO

EXEC  SPD_CustomerDetails @customerId='2'



CREATE PROCEDURE SPS_CustomerDetails

AS
BEGIN
   select * from tblcustomerDetails;
END

EXEC  SPS_CustomerDetails

