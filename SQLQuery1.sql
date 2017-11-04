create proc SpInsertEnq
@UserName nvarchar(50),
@OrgName nvarchar(50),
@Address nvarchar(MAX),
@Email nvarchar(50),
@PhoneNumber nvarchar(50),
@Desc nvarchar(MAX)
as
begin
Insert into enquiry values(@UserName,@OrgName,@Address,@Email,@PhoneNumber,@Desc)
End