
CREATE TABLE BANK(BankID INT IDENTITY(1,1) PRIMARY KEY ,BankName VARCHAR(100),Location VARCHAR(100),AccountNumber Varchar(20),Balance DECIMAL(18,2) );


CREATE PROCEDURE CreateBank(@BankName VARCHAR(100), @Location VARCHAR(100),@AccountNumber VARCHAR(20),@Balance DECIMAL(18,2))

AS
BEGIN
    INSERT INTO Bank (BankName, Location, AccountNumber, Balance)
    VALUES (@BankName, @Location, @AccountNumber, @Balance)
END


CREATE PROCEDURE GetBank
    @BankID INT
AS
BEGIN
    SELECT BankName, Location, AccountNumber, Balance
    FROM Bank
    WHERE BankID = @BankID
END

CREATE PROCEDURE UpdateBank
    @BankID INT,
    @BankName VARCHAR(100),
    @Location VARCHAR(100),
    @AccountNumber VARCHAR(20),
    @Balance DECIMAL(18,2)
AS
BEGIN
    UPDATE Bank
    SET BankName = @BankName,
        Location = @Location,
        AccountNumber = @AccountNumber,
        Balance = @Balance
    WHERE BankID = @BankID
END

CREATE PROCEDURE DeleteBank
    @BankID INT
AS
BEGIN
    DELETE FROM Bank
    WHERE BankID = @BankID
END


EXEC CreateBank 'icici', 'kaloor', '8974567890', 8000.00

EXEC GetBank 3

EXEC UpdateBank 1,'Federal Bank','Thrissur','9876543210',2000.00

EXEC DeleteBank 1 

select * from BANK;