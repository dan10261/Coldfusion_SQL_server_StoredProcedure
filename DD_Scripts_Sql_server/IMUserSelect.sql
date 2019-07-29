USE [CFObjects]
GO

/****** Object:  StoredProcedure [dbo].[IMUserSelect]    Script Date: 7/29/2019 12:59:19 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Dan Du>
-- Create date: <Create Date,07-28-2019,>
-- Description:	<Description,Slect Data from User table,>
-- =============================================
CREATE PROCEDURE [dbo].[IMUserSelect]
	@LastName varchar(50) = null,
	@FirstName varchar(50) = null,
	@UserName nchar(10) = null,
	@Email varchar(50) = null,
	@Id int =null
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
	LastName, 
	FirstName,
	SecPassword as Password,
	Email, 
	Id,
	UserName
	 from dbo.IMUsers 
	where LastName = coalesce(NULLIF(@LastName,''),LastName) 
	and FirstName = coalesce(NULLIF(@FirstName,''),FirstName)
	and UserName = coalesce(NULLIF(@UserName,''),UserName)
	and Email = coalesce(NULLIF(@Email,''),Email)
	and Id = coalesce(NULLIF(@Id,''),Id);
	RETURN 
END
GO

