CREATE TABLE [dbo].[logdata] (
    [Id]       INT          IDENTITY (1, 1) NOT NULL,
    [UserName] VARCHAR (50) NULL,
    [Password] VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

