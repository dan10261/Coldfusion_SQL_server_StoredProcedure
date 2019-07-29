USE [CFObjects]
GO

/****** Object:  StoredProcedure [dbo].[IMUserDelete]    Script Date: 7/29/2019 12:58:24 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[IMUserDelete] 
	-- Add the parameters for the stored procedure here
	@Id  int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from dbo.IMUsers
	where Id= @Id;


    RETURN @Id;
END
GO

