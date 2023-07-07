CREATE PROCEDURE SP_ADDTRAINING
	@Training_Title nvarchar(50) ,
	@Training_Description nvarchar(500) ,
	@PostedDate datetime,
	@Employee_Id nvarchar(50)
AS
BEGIN
insert into TBL_Training (Training_Title,  Training_Description,  PostedDate,  Employee_Id) 
values (@Training_Title,@Training_Description,@PostedDate,@Employee_Id)
END