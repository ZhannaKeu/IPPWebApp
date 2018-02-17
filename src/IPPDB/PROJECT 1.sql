CREATE DATABASE Project1

USE Project1

CREATE TABLE [dbo].[Name] (
  [Id] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
  [Ru] nvarchar(150) COLLATE Cyrillic_General_CI_AS NULL,
  [Kz] nvarchar(150) COLLATE Cyrillic_General_CI_AS NULL,
  [En] nvarchar(150) COLLATE Cyrillic_General_CI_AS NULL,
  [RuGenitive] nvarchar(150) COLLATE Cyrillic_General_CI_AS NULL,
  [RuDative] nvarchar(150) COLLATE Cyrillic_General_CI_AS NULL,
  [KzGenitive] nvarchar(150) COLLATE Cyrillic_General_CI_AS NULL,
  [KzDative] nvarchar(150) COLLATE Cyrillic_General_CI_AS NULL,
  [EnGenitive] nvarchar(150) COLLATE Cyrillic_General_CI_AS NULL,
  [EnDative] nvarchar(150) COLLATE Cyrillic_General_CI_AS NULL,
  [RuAbbr] nvarchar(32) COLLATE Cyrillic_General_CI_AS NULL,
  [EnAbbr] nvarchar(32) COLLATE Cyrillic_General_CI_AS NULL,
  [KzAbbr] nvarchar(32) COLLATE Cyrillic_General_CI_AS NULL)
  
  CREATE TABLE [dbo].[Organization] (
  [Id] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
  [NameId] int NOT NULL,
  [PlaceId] int NULL,
  [IsEducational] bit CONSTRAINT [DF__Organizat__IsEdu__3C1FE2D6] DEFAULT 0 NOT NULL,
  [IsIdentityDocument] bit CONSTRAINT [DF__Organizat__IsIde__3D14070F] DEFAULT 0 NOT NULL,
  [IsMilitary] bit CONSTRAINT [DF__Organizat__IsMil__14D10B8B] DEFAULT 0 NOT NULL)
  
  CREATE TABLE [dbo].[Person] (
  [Id] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
  [LastName] nvarchar(32) COLLATE Cyrillic_General_CI_AS NULL,
  [FirstName] nvarchar(32) COLLATE Cyrillic_General_CI_AS NULL,
  [MiddleName] nvarchar(32) COLLATE Cyrillic_General_CI_AS NULL,
  [Iin] varchar(12) COLLATE Cyrillic_General_CI_AS NULL,
  [Rnn] varchar(12) COLLATE Cyrillic_General_CI_AS NULL,
  [BirthDate] date NULL,
  [NationalityId] int NULL,
  [GenderId] int NULL,
  [MaritalStatusId] int NULL,
  [BloodGroupId] int NULL,
  [CitizenshipPlaceId] int NULL,
  [DisabilityGroupId] int NULL,
  [IsPensioner] bit NULL,
  [IsWorkless] bit NULL,
  [AcademicTitleId] int NULL,
  [KinshipId] int NULL,
  [Sic] varchar(16) COLLATE Cyrillic_General_CI_AS NULL,
  [BirthPlaceId] int NULL,
  [RegistrationPlaceId] int NULL,
  [LivePlaceId] int NULL,
  [DocumentKindId] int NULL,
  [DocumentSeries] varchar(32) COLLATE Cyrillic_General_CI_AS NULL,
  [DocumentNumber] varchar(32) COLLATE Cyrillic_General_CI_AS NULL,
  [DocumentDate] date NULL,
  [DocumentOrganizationId] int NULL,
  [CanChange] bit CONSTRAINT [DF__Person__CanChang__16B953FD] DEFAULT 1 NOT NULL,
  [QualificationId] int NULL,
  [PhotoId] int NULL,
  [LastNameId] int NULL,
  [FirstNameId] int NULL,
  [MiddleNameId] int NULL,
  [Email] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL)
  
  CREATE TABLE [dbo].[OrganizationStructure] (
  [Id] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
  [OrganizationId] int NOT NULL,
  [DepartmentId] int NOT NULL,
  [ParentId] int NULL,
  [IsFilial] bit CONSTRAINT [DF__Organizat__IsFil__6BB9E75F] DEFAULT 0 NOT NULL,
  [IsChair] bit CONSTRAINT [DF__Organizat__IsCha__575DE8F7] DEFAULT 0 NOT NULL,
  [IsFaculty] bit CONSTRAINT [DF__Organizat__IsFac__5669C4BE] DEFAULT 0 NOT NULL)
  
  CREATE TABLE [dbo].[AuthenticationModule] (
  [Id] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
  [AuthenticationId] int NOT NULL,
  [ModuleId] int NOT NULL,
  [AccessLevel] int NOT NULL,
  [OrganizationId] int NULL,
  [FilialId] int NULL,
  [OrganizationStructureId] int NULL,
  [FacultyId] int NULL,
  [IsUser] bit CONSTRAINT [DF__Authentic__IsUse__5DD5DC5C] DEFAULT 0 NOT NULL,
  [EducationYearId] int NULL)
  
  CREATE TABLE [dbo].[Post] (
  [Id] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
  [NameId] int NOT NULL)
  
  CREATE TABLE [dbo].[WorkPlace] (
  [Id] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
  [PostId] int NOT NULL,
  [IsActual] bit CONSTRAINT [DF__WorkPlace__IsActu__35A7EF71] DEFAULT 1 NOT NULL,
  [IsInstructor] bit CONSTRAINT [DF__WorkPlace__IsIns__7BD05397] DEFAULT 0 NOT NULL,
  [OrganizationStructureId] int NULL,
  [OrganizationId] int NOT NULL)
  
  CREATE TABLE [dbo].[Subject] (
  [Id] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
  [NameId] int NOT NULL,
  [IsTest] bit CONSTRAINT [DF__Subject__IsTest__70099B30] DEFAULT 0 NOT NULL,
  [Code] nvarchar(12) COLLATE Cyrillic_General_CI_AS NULL)
  
  CREATE TABLE [dbo].[Work] (
  [Id] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
  [PersonId] int NULL,
  [WorkPlaceId] int NOT NULL,
  [WorkStatusId] int NULL,
  [WorkStatusChangeDate] date NULL,
  [WorkStatusChangeReasonId] int NULL,
  [OrderId] int NULL,
  [Part] float CONSTRAINT [DF__Work__Part__0682EC34] DEFAULT 1 NOT NULL,
  [EducationDocumentId] int NULL,
  [VacantName] nvarchar(128) COLLATE Cyrillic_General_CI_AS NULL,
  [DateBegin] date NULL,
  [DateEnd] date NULL)
  
  CREATE TABLE [dbo].[Education] (
  [Id] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
  [PersonId] int NOT NULL,
  [OrganizationId] int NULL,
  [LanguageForeignId] int NULL,
  [PaymentFormId] int NULL,
  [GroupId] int NULL,
  [DateTimeRegistration] datetime NULL,
  [Number] int NULL,
  [EducationProgramId] int NULL,
  [Discount] int CONSTRAINT [DF__Education__Disco__68687968] DEFAULT 0 NOT NULL,
  [LanguageId] int NULL,
  [CertificateId] int NULL,
  [NeedHostel] bit CONSTRAINT [DF__Education__NeedH__19AACF41] DEFAULT 0 NOT NULL,
  [FilialId] int NULL,
  [QuotaId] int NULL,
  [YearEnd] int NULL,
  [EducationLevelId] int NULL,
  [IsHostel] bit CONSTRAINT [DF__Education__IsHos__75C27486] DEFAULT 0 NOT NULL,
  [YearBegin] int NULL,
  [Comment] nvarchar(1024) COLLATE Cyrillic_General_CI_AS NULL,
  [EducationStatusId] int NULL,
  [EducationStatusChangeReasonId] int NULL,
  [OrderId] int NULL,
  [EducationDocumentId] int NULL,
  [UserId] int NULL,
  [Created] datetime2(1) CONSTRAINT [DF__Education__Creat__2EE5E349] DEFAULT sysdatetime() NOT NULL,
  [InformationSourceId] bigint NULL,
  [InformationSourcePersonId] int NULL)
  
  CREATE TABLE [dbo].[Group] (
  [Id] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
  [EducationProgramId] int NOT NULL,
  [LanguageId] int NOT NULL,
  [EnterYear] int NOT NULL,
  [Number] int NOT NULL,
  [Comment] varchar(32) COLLATE Cyrillic_General_CI_AS NULL,
  [CuratorWorkId] int NULL,
  [FilialId] int NOT NULL,
  [EducationCount] int CONSTRAINT [DF__Group__Education__39E294A9] DEFAULT 0 NOT NULL,
  [AdviserWorkId] int NULL,
  [OrganizationId] int NOT NULL,
  [EducationStatusId] int NULL,
  [CustomName] nvarchar(32) COLLATE Cyrillic_General_CI_AS NULL,
  [EducationDirectionId] int NULL,
  [EducationLevelId] int NULL)
  
  CREATE TABLE [dbo].[EducationStatus] (
  [Id] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
  [NameId] int NOT NULL,
  [IsEducation] bit CONSTRAINT [DF__Status__IsEducat__1EF99443] DEFAULT 0 NOT NULL,
  [Year] int NULL,
  [Position] int CONSTRAINT [DF__Education__Posit__5026DB83] DEFAULT 0 NOT NULL,
  [IsBegin] bit CONSTRAINT [DF__Education__IsBeg__544C7222] DEFAULT 0 NOT NULL,
  [IsEnd] bit CONSTRAINT [DF__Education__IsEnd__5540965B] DEFAULT 0 NOT NULL,
  [IsCongratulate] bit CONSTRAINT [DF__Education__IsCon__5728DECD] DEFAULT 0 NOT NULL)
  
  CREATE TABLE [dbo].[Department] (
  [Id] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
  [NameId] int NOT NULL)
  
  CREATE TABLE [dbo].[AuthorizationIPPModule](
  [Id] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
  [PersonId] int CONSTRAINT [Person.Id] NOT NULL,
  [Login] nvarchar(50) NOT NULL,
  [Password] nvarchar(50) NOT NULL,
  [Role] int NOT NULL)