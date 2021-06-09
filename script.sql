USE [master]
GO
/****** Object:  User [##MS_PolicyEventProcessingLogin##]    Script Date: 09-06-2021 18:43:39 ******/
CREATE USER [##MS_PolicyEventProcessingLogin##] FOR LOGIN [##MS_PolicyEventProcessingLogin##] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [##MS_AgentSigningCertificate##]    Script Date: 09-06-2021 18:43:39 ******/
CREATE USER [##MS_AgentSigningCertificate##] FOR LOGIN [##MS_AgentSigningCertificate##]
GO
/****** Object:  Table [dbo].[LoginData]    Script Date: 09-06-2021 18:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginData](
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[LoginData] ([UserName], [Password]) VALUES (N'nisha', N'nisha')
INSERT [dbo].[LoginData] ([UserName], [Password]) VALUES (N'mayank', N'mayank')
GO
/****** Object:  StoredProcedure [dbo].[sp_CheckLoginDetails]    Script Date: 09-06-2021 18:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_CheckLoginDetails]
(
@UserName varchar(50),
@Password varchar(50)
)
AS
BEGIN
  
  IF EXISTS (select * from LoginData where UserName=@UserName and Password=@Password)
  
  SELECT 0
  else
  SELECT 1
END
GO