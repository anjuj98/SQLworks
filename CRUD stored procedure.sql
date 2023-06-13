
CREATE TABLE HOSPITAL (
    HospitalID   INT IDENTITY(1,1)  PRIMARY KEY,
    HospitalName VARCHAR(50),
    Location     VARCHAR(100),
    Capacity     INT
);

EXEC usp_HOSPITAL 0,'','',0,'SELECT'
EXEC usp_HOSPITAL 0,'Hollycross','Tamil Nadu',500,'INSERT'
EXEC usp_HOSPITAL 2,'Lifeline','Kollam',370,'UPDATE'
EXEC usp_HOSPITAL 1,'','',0,'DELETE'



CREATE PROCEDURE usp_HOSPITAL(@HospitalID INT ,@HospitalName VARCHAR(50),@Location VARCHAR(100),@Capacity INT,@Type Varchar(100))
AS
BEGIN
   
   IF @Type = 'SELECT'
   BEGIN
      SELECT * FROM HOSPITAL; 
   END;

    IF @Type = 'INSERT'
   BEGIN
       INSERT INTO HOSPITAL(HospitalName,Location,Capacity)VALUES(@HospitalName,@Location,@Capacity);

   END;

    IF @Type = 'UPDATE'
   BEGIN
       UPDATE HOSPITAL SET HospitalName = @HospitalName ,Location = @Location ,Capacity = @Capacity
	   WHERE HospitalID = @HospitalID;

   END;

    IF @Type = 'DELETE'
   BEGIN
      DELETE FROM HOSPITAL WHERE HospitalID = @HospitalID;

   END;
END;