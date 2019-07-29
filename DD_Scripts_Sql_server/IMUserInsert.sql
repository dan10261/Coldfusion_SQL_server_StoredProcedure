USE [CFObjects]
GO

/****** Object:  StoredProcedure [dbo].[IMUserInsert]    Script Date: 7/29/2019 12:59:45 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[IMUserInsert] 
	-- Add the parameters for the stored procedure here	
	@FirstName varchar(50) = null,
	@LastName varchar(50) = null,
	@UserName nchar(10) = null,
	@Password varchar(50) =null,
	@Email varchar(50) =null,
	@Id int output 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into dbo.IMUsers (FirstName, LastName,UserName,SecPassword,Email)
	values(@FirstName,@LastName,@UserName,@Password,@Email);
	 SELECT @Id = SCOPE_IDENTITY();


    RETURN @id
END
GO

