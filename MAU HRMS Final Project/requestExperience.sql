CREATE PROCEDURE SP_EXPERIENCEREQUEST
(
@Employee_Id nvarchar(50),
@Reason  nvarchar(500),
@RequestDate datetime 

)
AS
Begin
INSERT INTO TBL_ExperienceRequest( Employee_Id ,Reason, RequestDate ) VALUES
(@Employee_Id ,@Reason ,@RequestDate)
End