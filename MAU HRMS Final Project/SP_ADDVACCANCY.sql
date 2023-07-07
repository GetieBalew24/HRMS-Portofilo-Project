CREATE PROCEDURE SP_ADDVACCANCY 
	-- Add the parameters for the stored procedure here
@Dept nvarchar(50),
@NoOfVacc int,
@Criteria nvarchar(500),
@date datetime ,
@Employee_Id nvarchar(50)
AS
BEGIN
	INSERT INTO [dbo].[TBL_Vaccancy](Dept,Criteria,NoVaccancy, Date,Employee_Id) VALUES (@Dept, @Criteria, @NoOfVacc,@date,@Employee_Id)
END