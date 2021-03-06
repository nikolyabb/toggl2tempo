SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE dbo.Worklog
(
	Id BIGINT NOT NULL IDENTITY(1, 1),
	MasterId BIGINT NOT NULL,
	SecondaryId BIGINT NOT NULL,
	UpdatedOn DATETIME2 NOT NULL,
	CONSTRAINT PK_Worklog PRIMARY KEY CLUSTERED 
	(
		Id ASC
	)
)
GO

CREATE TABLE dbo.[User]
(
	Id BIGINT NOT NULL IDENTITY(1, 1),
	Email NVARCHAR(100) NOT NULL,
	Password NVARCHAR(100) NOT NULL
	CONSTRAINT PK_User PRIMARY KEY CLUSTERED
	(
		Id ASC
	)
)
GO

SET ANSI_PADDING OFF
GO