CREATE TABLE UsersIPPModule(
  Id int PRIMARY KEY auto_increment NOT NULL,
  PersonId int NOT NULL,
  Login nvarchar(50) NOT NULL,
  Password nvarchar(50) NOT NULL,
  Role int NOT NULL
)

CREATE TABLE TeachingLoad(
Id int IDENTITY NOT NULL,
PersonId int NOT NULL,
SemesterId int NOT NULL,
SubjectId int NOT NULL,
EducationYearId int NOT NULL,
GroupId int NOT NULL,
LecturePlan int NOT NULL,
SeminarPlan int NOT NULL,
LabPlan int NOT NULL,
SSWTPlan int NOT NULL,
ExamPlan int NOT NULL,
PracticePlan int NOT NULL,
DiplomaPlan int NOT NULL,
CourseWorkPlan int NOT NULL,
BoundaryCountedPlan int NOT NULL,
ControlAttendingClassesPlan int NOT NULL,
HistoryKazakhstanPlan int NOT NULL,
StateExamPlan int NOT NULL,
OtherPlan int NOT NULL,
LectureFact int NOT NULL,
SeminarFact int NOT NULL,
LabFact int NOT NULL,
SSWTFact int NOT NULL,
ExamFact int NOT NULL,
PracticeFact int NOT NULL,
DiplomaFact int NOT NULL,
CourseWorkFact int NOT NULL,
BoundaryCountedFact int NOT NULL,
ControlAttendingClassesFact int NOT NULL,
HistoryKazakhstanFact int NOT NULL,
StateExamFact int NOT NULL,
OtherFact int NOT NULL,
IsNew bit  DEFAULT 0 NOT NULL
)

CREATE TABLE TimeNorms(
  Id int PRIMARY KEY auto_increment NOT NULL,
  Code nvarchar (5) NOT NULL,
  WorkType nvarchar(300) NOT NULL,
  Unit nvarchar(100) NOT NULL,
  Hours int NOT NULL,
  IdTypeWork int not null
)

INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01101', 'Подготовка к занятиям: К лекциям по новому (для преподавателя) курсу', '1 час', 2,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01102', 'Подготовка к занятиям: К лекциям по читаемому курсу','1 час', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01103', 'Подготовка к занятиям: К практическим (семинарским) занятиям','1 час', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01104', 'Подготовка к занятиям: К лабораторным работам','1 час', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01105', 'Подготовка к занятиям: К выездным занятиям, туристским походам','1 час', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01106', 'Подготовка к занятиям: К  практическим  занятиям, лабораторным по  новому для преподавателя курсу','1 час', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01107', 'Подготовка к занятиям: СРСП, СРМП, СРДП','1 час', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01108', 'Подготовка к занятиям: Открытому занятию','1 час', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01109', 'Подготовка к занятиям: Подготовка и запись видеолекций','1 час', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01110', 'Подготовка к занятиям: Подготовка и проведение показательных занятий','1 час', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01111', 'Подготовка к занятиям: Подготовка и проведение онлайн-лекций','1 час', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01112', 'Подготовка к занятиям: Ролевая игра, деловая игра','1 час', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01113', 'Подготовка к занятиям: Виртуальные лабораторные работы','1 час', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01114', 'Подготовка к занятиям: Кейс', '1 час', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01115', 'Подготовка к занятиям: Занятия с участием работодателей','1 час', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01201', 'Разработка текстов лекций по новому курсу ','1 час', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01301', 'Разработка заданий: На дипломную работу','1 задание', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01401', 'Написание методических указаний: Для дипломной работы','1 п. л.', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01402', 'Написание методических указаний: Для курсовой работы','1 п. л.', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01403', 'Написание методических указаний: Для практических, семинарских занятий','1 п. л.', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01404', 'Написание методических указаний: Для лабораторных работ','1 п. л.', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01405', 'Написание методических указаний: Сборников упражнений, задач','1 п. л.', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01406', 'Написание методических указаний: Для прохождения учебной (производственной) практики','1 п. л.', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01501', 'Переработка методических указаний: Для дипломной работы','1 п. л.', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01502', 'Переработка методических указаний: Для курсовой работы','1 п. л.', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01503', 'Переработка методических указаний: Для практических, семинарских занятий','1 п. л.', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01504', 'Переработка методических указаний: Для лабораторных работ','1 п. л.', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01505', 'Переработка методических указаний: Сборников упражнений, задач','1 п. л.', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01506', 'Переработка методических указаний: Для прохождения учебной (производственной) практики','1 п. л.', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01601', 'Выпуск силлабусов: новых','1 силлабус', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01602', 'Выпуск силлабусов: переработанных, переизданных','1 силлабус', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01701', 'Разработка тестов: вновь разрабатываемых','100 вопросов', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01702', 'Разработка тестов: перерабатываемых','100 вопросов', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01801', 'Разработка комплектов экзаменационных билетов для ГАК: вновь разрабатываемых','1 комплект', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01802', 'Разработка комплектов экзаменационных билетов для ГАК: перерабатываемых','1 комплект', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01803', 'Разработка комплектов экзаменационных билетов для ГАК: вновь разрабатываемых с задачами','1 комплект', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01804', 'Разработка комплектов экзаменационных билетов для ГАК: перерабатываемых с задачами','1 комплект', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01901', 'Разработка экзаменационных билетов и материалов: вновь разрабатываемых','1 комплект', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01902', 'Разработка экзаменационных билетов и материалов: перерабатываемых','1 комплект', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01903', 'Разработка экзаменационных билетов и материалов: вновь разрабатываемых с задачами','1 комплект', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('01904', 'Разработка экзаменационных билетов и материалов: перерабатываемых с задачами','1 комплект', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('10001', 'Укомплектование УМК: вновь разрабатываемых','1 комплект', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('10002', 'Укомплектование УМК: перерабатываемых','1 комплект', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('10011', 'Разработка и внедрение: Раздаточных информационных средств (лекционных демонстраций, схем, фильмов, имитаторов, электронных   презентаций, слайдов)','1 час лек-ционного и практич. занятия', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('10012', 'Разработка и внедрение: Новых лабораторных работ','1 час лек-ционного занятия', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('10013', 'Разработка и внедрение: Модернизация действующих лабораторных работ','1 работа', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('10041', 'Первичная разработка: Рабочих учебных планов по специальности','1 план', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('10042', 'Первичная разработка: Каталогов дисциплин','1 каталог', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('10043', 'Первичная разработка: Электронного учебника','1 учебник', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('10044', 'Первичная разработка: Контрольно-обучающих программ','1 программ', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('10051', 'Переработка: Учебных планов','1 план', 0,1);
INSERT INTO TimeNorms(Code,  WorkType,  Unit, Hours, IdTypeWork) 
VALUES ('10052', 'Переработка: Каталогов дисциплин','1 каталог', 0,1);



///---------------------------------------------------------------
CREATE TABLE Name (
  Id int PRIMARY KEY auto_increment NOT NULL,
  Ru nvarchar(150) NULL,
  Kz nvarchar(150) NULL,
  En nvarchar(150)  NULL,
  RuGenitive nvarchar(150)  NULL,
  RuDative nvarchar(150)  NULL,
  KzGenitive nvarchar(150)  NULL,
  KzDative nvarchar(150) NULL,
  EnGenitive nvarchar(150)  NULL,
  EnDative nvarchar(150)  NULL,
  RuAbbr nvarchar(32) NULL,
  EnAbbr nvarchar(32) NULL,
  KzAbbr nvarchar(32) NULL)

CREATE TABLE AcademicDegree (
  Id int PRIMARY KEY NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE AcademicTitle (
  Id int AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE EducationLevel (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  Code varchar(32) NULL,
  NameId int NOT NULL,
  IsSpeciality bit DEFAULT 0 NOT NULL,
  Level int  DEFAULT 0 NOT NULL,
  YearBase int  DEFAULT 0 NOT NULL,
  IsCredit bit  DEFAULT 0 NOT NULL
)

CREATE TABLE Qualification (
  Id int AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL,
  EducationLevelId int NULL
)

CREATE TABLE PlaceHierarhy (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL,
  IsCode bit  DEFAULT 0 NOT NULL,
  IsSettlement bit  DEFAULT 0 NOT NULL,
  Position int  DEFAULT 0 NOT NULL,
  IsSearch bit  DEFAULT 0 NOT NULL
)

CREATE TABLE PlaceType (
  Id int AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL,
  PlaceHierarhyId int NOT NULL,
  Count int  DEFAULT 0 NOT NULL
)

CREATE TABLE Place (
  Id int AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL,
  PlaceTypeId int NOT NULL,
  ParentId int NULL,
  PhoneCode varchar(32) NULL,
  PhoneMask varchar(32) NULL,
  KatoCode nvarchar(12) NULL
)

CREATE TABLE Photo (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  Bytes image NOT NULL,
  PersonId int NULL
)

CREATE TABLE Nationality (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE MiddleName (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE MaritalStatus (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE LastName (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL
)


CREATE TABLE Gender (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE Kinship (
  Id int AUTO_INCREMENT NOT NULL,
  NameId int DEFAULT 10 NOT NULL,
  GenderId int NULL
)

CREATE TABLE FirstName (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE DocumentKind (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  SeriesMask varchar(32) NULL,
  NumberMask varchar(32) NULL,
  NameId int NOT NULL,
  IsSeries bit DEFAULT 1 NOT NULL,
  IsEducationCertificate bit DEFAULT 1 NOT NULL,
  IsIin bit  DEFAULT 1 NOT NULL
)

CREATE TABLE DisabilityGroup (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  Name varchar(32) NOT NULL
)

ALTER TABLE DisabilityGroup 
ADD constraint identity 
UNIQUE  (Name)

CREATE TABLE BloodGroup (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  Name varchar(32) NOT NULL
)

ALTER TABLE BloodGroup
ADD constraint identity 
UNIQUE  (Name)

CREATE TABLE Organization (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL,
  PlaceId int NULL,
  IsEducational bit DEFAULT 0 NOT NULL,
  IsIdentityDocument bit  DEFAULT 0 NOT NULL,
  IsMilitary bit  DEFAULT 0 NOT NULL
)

CREATE TABLE Person (
  Id int AUTO_INCREMENT NOT NULL,
  LastName nvarchar(32) NULL,
  FirstName nvarchar(32) NULL,
  MiddleName nvarchar(32) NULL,
  Iin varchar(12) NULL,
  Rnn varchar(12) NULL,
  BirthDate date NULL,
  NationalityId int NULL,
  GenderId int NULL,
  MaritalStatusId int NULL,
  BloodGroupId int NULL,
  CitizenshipPlaceId int NULL,
  DisabilityGroupId int NULL,
  IsPensioner bit NULL,
  IsWorkless bit NULL,
  AcademicTitleId int NULL,
  KinshipId int NULL,
  Sic varchar(16) NULL,
  BirthPlaceId int NULL,
  RegistrationPlaceId int NULL,
  LivePlaceId int NULL,
  DocumentKindId int NULL,
  DocumentSeries varchar(32) NULL,
  DocumentNumber varchar(32) NULL,
  DocumentDate date NULL,
  DocumentOrganizationId int NULL,
  CanChange bit  DEFAULT 1 NOT NULL,
  QualificationId int NULL,
  PhotoId int NULL,
  LastNameId int NULL,
  FirstNameId int NULL,
  MiddleNameId int NULL,
  Email nvarchar(max) NULL
)

CREATE TABLE Department (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE OrganizationStructure (
  Id int AUTO_INCREMENT NOT NULL,
  OrganizationId int NOT NULL,
  DepartmentId int NOT NULL,
  ParentId int NULL,
  IsFilial bit DEFAULT 0 NOT NULL,
  IsChair bit  DEFAULT 0 NOT NULL,
  IsFaculty bit  DEFAULT 0 NOT NULL
)

CREATE TABLE Authentication (
  Id int AUTO_INCREMENT NOT NULL,
  PersonId int NOT NULL,
  Login nvarchar(32) NOT NULL,
  Password nvarchar(32) NOT NULL,
  DateTo datetime NULL,
  OrganizationId int NULL,
  OrganizationStructureId int NULL,
  IsAuthorized bit  DEFAULT 0 NOT NULL
)

CREATE TABLE Module (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NULL,
  FormName varchar(64) NULL,
  IconPath varchar(128) NULL,
  ParentId int NULL,
  Position int DEFAULT 0 NOT NULL,
  Settings nvarchar(1024) NULL
)

CREATE TABLE Filial (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL,
  OrganizationId int NULL
)

CREATE TABLE Faculty (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE EducationYear (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  YearBegin int  DEFAULT 0 NOT NULL,
  YearEnd int  DEFAULT 0 NOT NULL
)

CREATE TABLE AuthenticationModule (
  Id int AUTO_INCREMENT NOT NULL,
  AuthenticationId int NOT NULL,
  ModuleId int NOT NULL,
  AccessLevel int NOT NULL,
  OrganizationId int NULL,
  FilialId int NULL,
  OrganizationStructureId int NULL,
  FacultyId int NULL,
  IsUser bit DEFAULT 0 NOT NULL,
  EducationYearId int NULL
)

CREATE TABLE BuildingStructure (
  Id int PRIMARY KEY AUTO_INCREMENT  NOT NULL,
  OrganizationId int NOT NULL,
  NameId int NOT NULL,
  PlaceId int NULL,
  ParentId int NULL,
  PlaceCount int  DEFAULT 0 NOT NULL,
  IsLiving bit  DEFAULT 0 NOT NULL,
  IsEducation bit DEFAULT 0 NOT NULL,
  FilialId int NOT NULL
)

CREATE TABLE Language (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL,
  IsForeign bit  DEFAULT 0 NOT NULL,
  IsEducational bit  DEFAULT 0 NOT NULL,
  Culture varchar(2) NULL
)

CREATE TABLE Certificate (
  Id int AUTO_INCREMENT NOT NULL,
  Series varchar(32) NULL,
  Number varchar(32) NULL,
  Ikt varchar(32) NULL,
  PersonId int NOT NULL,
  LanguageId int NULL
)

CREATE TABLE ChangeLog (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  DateTime datetime2(1)  NOT NULL,
  PersonId int NOT NULL,
  Data nvarchar(2048) NULL,
  ChangeType varchar(1) NOT NULL,
  TableName varchar(128) NULL,
  String nvarchar(256) NULL,
  ItemId int DEFAULT 0 NOT NULL,
  OldData nvarchar(2048) NULL,
  IsCanceled bit  DEFAULT 0 NOT NULL
)

CREATE TABLE ChatPerson (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  PersonId int NOT NULL,
  ToPersonId int NOT NULL
)

CREATE TABLE Chat (
  Id int AUTO_INCREMENT NOT NULL,
  ChatPersonId int NOT NULL,
  Message nvarchar(1024) NOT NULL,
  DateTime datetime NOT NULL
)

CREATE TABLE ClassType (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL,
  IsTimetable bit  DEFAULT 1 NOT NULL,
  IsContact bit  DEFAULT 0 NOT NULL,
  Position int  DEFAULT 0 NOT NULL
)

CREATE TABLE WorkStatusChangeReason (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE WorkStatus (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL,
  IsWork bit  DEFAULT 0 NOT NULL
)

CREATE TABLE Post (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE WorkPlace (
  Id int AUTO_INCREMENT NOT NULL,
  PostId int NOT NULL,
  IsActual bit  DEFAULT 1 NOT NULL,
  IsInstructor bit DEFAULT 0 NOT NULL,
  OrganizationStructureId int NULL,
  OrganizationId int NOT NULL
)

CREATE TABLE OrderType (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL,
  ParentId int NULL
)

CREATE TABLE OrderN (
  ID int AUTO_INCREMENT NOT NULL,
  Number nvarchar(32) NOT NULL,
  Date date NOT NULL,
  OrderTypeId int NULL,
  Comment nvarchar(1024) NULL,
  OrganizationId int NOT NULL
)

CREATE TABLE SpecialityGroup (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  Code varchar(32) NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE Speciality (
  Id int AUTO_INCREMENT NOT NULL,
  Code varchar(8) NULL,
  SpecialityGroupId int NULL,
  NameId int NOT NULL
)

CREATE TABLE Specialization (
  Id int AUTO_INCREMENT NOT NULL,
  Code varchar(8) NULL,
  SpecialityId int NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE EducationStatus (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL,
  IsEducation bit  DEFAULT 0 NOT NULL,
  Year int NULL,
  Position int DEFAULT 0 NOT NULL,
  IsBegin bit  DEFAULT 0 NOT NULL,
  IsEnd bit  DEFAULT 0 NOT NULL,
  IsCongratulate bit  DEFAULT 0 NOT NULL
)

CREATE TABLE Quota (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE InformationSource (
  Id bigint PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL,
  NeedPersonInfo bit  DEFAULT 0 NOT NULL
)

CREATE TABLE ScientificDirection (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE EducationPeriod (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL,
  InYearCount int  DEFAULT 1 NOT NULL
)

CREATE TABLE EducationForm (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL,
  IsQuota bit  DEFAULT 0 NOT NULL,
  IsHostel bit  DEFAULT 0 NOT NULL
)

CREATE TABLE EducationDirection (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE EducationProgram (
  Id int AUTO_INCREMENT NOT NULL,
  SpecialityId int NULL,
  SpecializationId int NULL,
  EducationLevelBeforeId int NULL,
  EducationLevelAfterId int NULL,
  ParentId int NULL,
  EducationDirectionId int NULL,
  ScientificDirectionId int NULL,
  EducationFormId int NULL,
  IsActual bit  DEFAULT 0 NOT NULL,
  IsRelated bit  DEFAULT 0 NOT NULL,
  Period int NULL,
  QualificationId int NULL,
  IsCertificate bit  DEFAULT 0 NOT NULL,
  EnterDateBegin date NULL,
  EnterDateEnd date NULL,
  EducationPeriodId int NULL,
  OrganizationStructureId int NULL,
  EducationOrganizationStructureId int NULL,
  FacultyId int NULL,
  StudentOrganizationStructureId int NULL,
  OrganizationId int NULL,
  EnterMinPoint int  DEFAULT 0 NOT NULL,
  IsTest int  DEFAULT 0 NOT NULL,
  IsInterview int  DEFAULT 0 NOT NULL,
  InGroupCount int  DEFAULT 30 NOT NULL,
  IsWork bit  DEFAULT 0 NOT NULL
)

CREATE TABLE GroupN (
  Id int AUTO_INCREMENT NOT NULL,
  EducationProgramId int NOT NULL,
  LanguageId int NOT NULL,
  EnterYear int NOT NULL,
  Number int NOT NULL,
  Comment varchar(32) NULL,
  CuratorWorkId int NULL,
  FilialId int NOT NULL,
  EducationCount int DEFAULT 0 NOT NULL,
  AdviserWorkId int NULL,
  OrganizationId int NOT NULL,
  EducationStatusId int NULL,
  CustomName nvarchar(32) NULL,
  EducationDirectionId int NULL,
  EducationLevelId int NULL
)

CREATE TABLE EducationStatusChangeReason (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL,
  IsDelete bit  DEFAULT 0 NOT NULL
)

CREATE TABLE PaymentForm (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE Education (
  Id int AUTO_INCREMENT NOT NULL,
  PersonId int NOT NULL,
  OrganizationId int NULL,
  LanguageForeignId int NULL,
  PaymentFormId int NULL,
  GroupId int NULL,
  DateTimeRegistration datetime NULL,
  Number int NULL,
  EducationProgramId int NULL,
  Discount int  DEFAULT 0 NOT NULL,
  LanguageId int NULL,
  CertificateId int NULL,
  NeedHostel bit DEFAULT 0 NOT NULL,
  FilialId int NULL,
  QuotaId int NULL,
  YearEnd int NULL,
  EducationLevelId int NULL,
  IsHostel bit  DEFAULT 0 NOT NULL,
  YearBegin int NULL,
  Comment nvarchar(1024) NULL,
  EducationStatusId int NULL,
  EducationStatusChangeReasonId int NULL,
  OrderId int NULL,
  EducationDocumentId int NULL,
  UserId int NULL,
  Created datetime2(1)  NOT NULL,
  InformationSourceId bigint NULL,
  InformationSourcePersonId int NULL
)

CREATE TABLE EducationDocument (
  Id int AUTO_INCREMENT NOT NULL,
  EducationId int NULL,
  YearBegin int NULL,
  YearEnd int NULL,
  OrganizationId int NULL,
  Code nvarchar(12) NULL,
  SpecialityId int NULL,
  SpecializationId int NULL,
  QualificationId int NULL,
  Series nvarchar(12) NULL,
  Number nvarchar(32) NULL,
  NumberReg nvarchar(12) NULL,
  Date date NULL,
  ProtocolNumber nvarchar(12) NULL,
  ProtocolDate date NULL,
  AveragePoint float NULL,
  IsRed bit  DEFAULT 0 NOT NULL,
  IsGoldMedal bit  DEFAULT 0 NOT NULL,
  PersonId int NOT NULL,
  LanguageId int NULL,
  LanguageForeignId int NULL,
  EducationLevelId int NOT NULL,
  DiplomWorkName nvarchar(1024) NULL
)

CREATE TABLE Work (
  Id int AUTO_INCREMENT NOT NULL,
  PersonId int NULL,
  WorkPlaceId int NOT NULL,
  WorkStatusId int NULL,
  WorkStatusChangeDate date NULL,
  WorkStatusChangeReasonId int NULL,
  OrderId int NULL,
  Part float DEFAULT 1 NOT NULL,
  EducationDocumentId int NULL,
  VacantName nvarchar(128) NULL,
  DateBegin date NULL,
  DateEnd date NULL
)

CREATE TABLE EducationProgramLanguage (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  EducationProgramId int NOT NULL,
  LanguageId int NULL,
  Year int DEFAULT 0 NOT NULL,
  IsOpen bit  DEFAULT 0 NOT NULL,
  EducationYearId int NULL,
  QualificationId int NULL
)

CREATE TABLE CurriculumModelCompitention (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE CurriculumModelComponent (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL,
  IsOptional bit  DEFAULT 0 NOT NULL
)

CREATE TABLE CurriculumModelCycle (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL,
  Position int  DEFAULT 0 NOT NULL
)

CREATE TABLE CurriculumModelItem (
  Id int AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL,
  CurriculumModelCycleId int NULL,
  CurriculumModelComponentId int NULL
)

CREATE TABLE CurriculumModel (
  Id int AUTO_INCREMENT NOT NULL,
  EducationProgramLanguageId int NOT NULL,
  CurriculumModelItemId int NULL,
  CurriculumModelId int NULL,
  CreditCount int DEFAULT 0 NOT NULL,
  Position int  DEFAULT 1 NOT NULL,
  CurriculumModelCompitentionId int NULL,
  CreditCountTransfer int  DEFAULT 0 NOT NULL,
  CurriculumModelCycleId int NULL,
  CurriculumModelComponentId int NULL
)

CREATE TABLE CurriculumModelEducationPeriod (
  Id int AUTO_INCREMENT NOT NULL,
  CurriculumModelId int NOT NULL,
  EducationPeriodId int NOT NULL,
  EducationPeriodNumber int  DEFAULT 0 NOT NULL
)

CREATE TABLE Subject (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL,
  IsTest bit DEFAULT 0 NOT NULL,
  Code nvarchar(12) NULL
)

CREATE TABLE Discipline (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  SubjectId int NOT NULL,
  Comment nvarchar(1024) NULL,
  LanguageId int NOT NULL,
  OrganizationStructureId int NULL,
  IsActual bit DEFAULT 1 NOT NULL,
  EducationLevelId int NOT NULL,
  Code nvarchar(12) NULL
)

CREATE TABLE CurriculumModelSubject (
  Id int AUTO_INCREMENT NOT NULL,
  CurriculumModelId int NOT NULL,
  SubjectId int NOT NULL,
  Code nvarchar(12) NULL,
  LanguageId int NULL,
  DisciplineId int NULL
)

CREATE TABLE CurriculumIndividual (
  Id int AUTO_INCREMENT NOT NULL,
  CurriculumModelSubjectId int NOT NULL,
  WorkId int NULL,
  EducationYearId int NOT NULL,
  EducationId int NOT NULL,
  CurriculumModelEducationPeriodId int NULL
)

CREATE TABLE CurriculumModelControlForm (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL,
  IsResult bit DEFAULT 0 NOT NULL,
  IsGovernment bit DEFAULT 0 NOT NULL
)

CREATE TABLE EducationPointOld (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  Point int DEFAULT 0 NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE EducationPoint (
  Id int AUTO_INCREMENT NOT NULL,
  Letter varchar(2) NOT NULL,
  Point float DEFAULT 0 NOT NULL,
  PercentFrom int DEFAULT 0 NOT NULL,
  PercentTo int DEFAULT 0 NOT NULL,
  NameId int NOT NULL,
  EducationPointOldId int NOT NULL
)

CREATE TABLE CurriculumIndividualPoint (
  Id int AUTO_INCREMENT NOT NULL,
  CurriculumIndividualId int NOT NULL,
  CurriculumModelControlFormId int NOT NULL,
  Date datetime NULL,
  EducationPointId int NULL
)

CREATE TABLE CurriculumModelClassType (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  CurriculumModelId int NOT NULL,
  ClassTypeId int NOT NULL,
  Hours int DEFAULT 0 NOT NULL
)

CREATE TABLE CurriculumModelControlFormPoint (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  ControlFormId int NOT NULL,
  PointId int NOT NULL
)

CREATE TABLE CurriculumModelCredit (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  Count int NOT NULL,
  EducationFormId int NOT NULL,
  EducationLevelId int NOT NULL,
  EducationDirectionId int NULL,
  Hours int DEFAULT 0 NOT NULL
)

CREATE TABLE CurriculumModelCreditСlassType (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  CurriculumModelCreditId int NOT NULL,
  ClassTypeId int NOT NULL,
  Hours int DEFAULT 0 NOT NULL
)

CREATE TABLE CurriculumModelCurriculumModelControlForm (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  CurriculumModelId int NOT NULL,
  CurriculumModelControlFormId int NOT NULL,
  IsResult bit DEFAULT 0 NOT NULL
)

CREATE TABLE Diagnos (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  Code nvarchar(12) NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE Disability (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  PersonId int NOT NULL,
  Series nvarchar(6) NULL,
  Number nvarchar(12) NULL,
  DiagnosId int NOT NULL,
  DateBegin date NOT NULL,
  DateEnd date NOT NULL,
  Comment nvarchar(128) NULL,
  WorkDay int DEFAULT 0 NOT NULL
)

CREATE TABLE DisciplineWork (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  DisciplineId int NOT NULL,
  WorkId int NOT NULL
)

CREATE TABLE EducationCalendarItem (
  Id bigint PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE EducationCalendar (
  Id bigint AUTO_INCREMENT NOT NULL,
  EducationCalendarItemId bigint NOT NULL,
  DateFrom datetime2(7) NOT NULL,
  DateTo datetime2(7) NULL,
  EducationYearId int NULL,
  Period int NULL,
  EducationPeriodId int NULL,
  EducationLevelId int NULL,
  EducationFormId int NULL,
  EducationDirectionId int NULL,
  ScientificDirectionId int NULL,
  LanguageId int NULL
)

CREATE TABLE EducationDocumentSupplement (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  EducationDocumentId int NOT NULL,
  SubjectId int NOT NULL,
  CreditId int NULL,
  EducationPointId int NULL,
  Percent int DEFAULT 0 NOT NULL,
  Code nvarchar(12) NULL,
  EducationPointOldId int NULL,
  Hours int NULL
)

CREATE TABLE EducationFilter (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  SpecialityId int NULL,
  SpecializationId int NULL,
  FacultiId int NULL,
  FilialId int NULL,
  EducationFormId int NULL,
  PaymentFormId int NULL,
  EducationLevelId int NULL,
  EducationLevelBaseId int NULL,
  LanguageId int NULL,
  GroupId int NULL
)

CREATE TABLE EducationFlow (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  EducationYearId int NOT NULL,
  SubjectId int NOT NULL,
  LanguageId int NOT NULL,
  WorkId int NULL,
  ClassTypeId int NOT NULL
)

CREATE TABLE EducationLevelFormClassType (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  EducationLevelId int NOT NULL,
  EducationFormId int NOT NULL,
  ClassTypeId int NOT NULL
)

CREATE TABLE EducationLoad (
  Id bigint PRIMARY KEY AUTO_INCREMENT NOT NULL,
  EducationYearId int NOT NULL,
  EducationFormId int NOT NULL,
  FilialId int NOT NULL,
  DisciplineId int NOT NULL,
  WorkId int NULL,
  EducationPeriodId int NOT NULL,
  YearPart int DEFAULT 0 NOT NULL,
  LectureHours float DEFAULT 0 NOT NULL,
  PracticeHours float DEFAULT 0 NOT NULL,
  WorkWithTeacherHours float DEFAULT 0 NOT NULL,
  ExamHours float DEFAULT 0 NOT NULL,
  InternshipHours float DEFAULT 0 NOT NULL,
  DiplomaHours float DEFAULT 0 NOT NULL,
  ResearchWorkHours float DEFAULT 0 NOT NULL,
  VoudHours float DEFAULT 0 NOT NULL,
  CourseWorkHours float DEFAULT 0 NOT NULL,
  IntermediateControlHours float DEFAULT 0 NOT NULL
)

CREATE TABLE EducationLoadGroup (
  Id bigint PRIMARY KEY AUTO_INCREMENT NOT NULL,
  EducationLoadId bigint NOT NULL,
  EducationProgramId int DEFAULT 0 NOT NULL,
  GroupName nvarchar(max) NULL,
  EducationCount int DEFAULT 0 NOT NULL,
  EducationInFlowCount int DEFAULT 0 NOT NULL
)

CREATE TABLE EducationOrder (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  EducationId int NOT NULL,
  OrderId int NULL,
  EducationStatusId int NOT NULL,
  EducationStatusChangeReasonId int NOT NULL,
  EducationYearId int NOT NULL,
  DateTime datetime2(1)  NOT NULL
)

CREATE TABLE EducationOrderBlank (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  EducationFormId int NULL,
  PaymentFormId int NULL,
  EducationLevelBeforeId int NULL,
  EducationLevelAfterId int NULL,
  FilialId int NULL,
  Text nvarchar(1024) NULL,
  OrderId int NULL,
  Position int DEFAULT 0 NOT NULL,
  IsRelated bit NULL
)

CREATE TABLE EducationOrderBlankWorkPlace (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  EducationOrderBlankId int NOT NULL,
  WorkPlaceId int NOT NULL,
  Position int DEFAULT 0 NOT NULL
)

CREATE TABLE PrivilegedCategory (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE EducationPrivilegedCategory (
  Id int AUTO_INCREMENT NOT NULL,
  EducationId int NOT NULL,
  PrivilegedCategoryId int NOT NULL
)

CREATE TABLE EducationProgramCertificateSubject (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  EducationProgramId int NOT NULL,
  SubjectId int NOT NULL,
  IsElective bit DEFAULT 0 NOT NULL,
  IsAdditional bit DEFAULT 0 NOT NULL,
  PointMin int DEFAULT 0 NOT NULL,
  PointMax int DEFAULT 0 NOT NULL,
  IsProfile bit DEFAULT 0 NOT NULL,
  LanguageId int NULL
)

CREATE TABLE EducationProgramClassType (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  EducationProgramId int NOT NULL,
  ClassTypeId int NOT NULL,
  IsVisible bit DEFAULT 1 NOT NULL
)

CREATE TABLE EducationProgramStatus (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  EducationProgramId int NOT NULL,
  EducationStatusId int NOT NULL
)

CREATE TABLE EducationProgramWorkPlace (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  EducationProgramLanguageId int NOT NULL,
  WorkPlaceId int NOT NULL,
  IsConfirmed bit DEFAULT 0 NOT NULL,
  ConfirmedDateTime datetime2(1) NULL
)

CREATE TABLE Facultativ (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL,
  IsMonitored bit DEFAULT 0 NOT NULL
)

CREATE TABLE File (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  PersonId int NOT NULL,
  Name nvarchar(128) NOT NULL,
  Comment nvarchar(1024) NULL,
  Extension varchar(12) NULL,
  Bytes varbinary(max) NOT NULL
)

CREATE TABLE Info (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  Ru nvarchar(1024) NULL,
  Kz nvarchar(1024) NULL,
  En nvarchar(1024) NULL
)

CREATE TABLE Instructor (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  WorkId int NOT NULL
)

CREATE TABLE InstructorSubjectLanguage (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  InstructorId int NOT NULL,
  SubjectId int NOT NULL,
  LanguageId int NOT NULL
)

CREATE TABLE Kin (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  PersonParentId int NOT NULL,
  PersonChildId int NOT NULL,
  KinshipId int NULL
)

CREATE TABLE LanguageLevel (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE OrderWork (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  OrderId int NOT NULL,
  WorkId int NOT NULL
)

CREATE TABLE OrganizationEducationKind (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE OrganizationRelation (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  OrganizationId int NOT NULL,
  RelationOrganozationId int NOT NULL,
  Name nvarchar(max) NOT NULL,
  DateFrom datetime2(7) NOT NULL,
  DateTo datetime2(7) NULL,
  FileId int NULL
)

CREATE TABLE OrganizationRelationTag (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE OrganizationRelationOrganizationRelationTag (
  Id int AUTO_INCREMENT NOT NULL,
  OrganizationRelationId int NOT NULL,
  OrganizationRelationTagId int NOT NULL
)

CREATE TABLE PersonFacultativ (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  PersonId int NOT NULL,
  FacultativId int NOT NULL
)

CREATE TABLE PersonLanguage (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  PersonId int NOT NULL,
  LanguageId int NOT NULL,
  LanguageLevelId int NOT NULL
)

CREATE TABLE SportAchievement (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL
)

CREATE TABLE PersonSportAchievement (
  Id int AUTO_INCREMENT NOT NULL,
  PersonId int NOT NULL,
  SportAchievementId int NOT NULL
)

CREATE TABLE StateAward (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NameId int NOT NULL,
  CountryPlaceId int NOT NULL
)

CREATE TABLE PersonStateAward (
  Id int AUTO_INCREMENT NOT NULL,
  PersonId int NOT NULL,
  StateAwardId int NOT NULL
)

CREATE TABLE PhoneOperator (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  Name varchar(128) NULL,
  PhoneCode varchar(32) NULL,
  PhoneMask varchar(32) NULL,
  PlaceId int NOT NULL
)

CREATE TABLE Phone (
  Id int AUTO_INCREMENT NOT NULL,
  PlaceId int NULL,
  PhoneOperatorId int NULL,
  Numeber varchar(32) NOT NULL,
  IsFax bit DEFAULT 0 NOT NULL,
  PersonId int NULL,
  OrganizationId int NULL,
  IsSubscribed bit DEFAULT 0 NOT NULL,
  ConnectionTypeId int DEFAULT 1 NOT NULL
)

CREATE TABLE PlaceHierarhyRelation (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  PlaceHierarhyParentId int NOT NULL,
  PlaceHierarhyChildrenId int NOT NULL,
  Count int DEFAULT 0 NOT NULL
)

CREATE TABLE SpecialityGroupSubject (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  SpecialityGroupId int NOT NULL,
  SubjectId int NOT NULL
)

CREATE TABLE SubjectPoint (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  CertificateId int NOT NULL,
  SubjectId int NOT NULL,
  Point int NOT NULL
)

CREATE TABLE WorkExperience (
  Id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  OrganizationId int NOT NULL,
  DepartmentId int NULL,
  PostId int NULL,
  PersonId int NOT NULL,
  WorkId int NULL,
  DateEnd date NULL,
  WorkStatusChangeReasonId int NULL,
  DateBegin date NULL
)


ALTER TABLE AcademicTitle
ADD CONSTRAINT AcademicTitle_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationLevel
ADD CONSTRAINT EducationLevel_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE PlaceHierarhy
ADD CONSTRAINT PlaceHierarhy_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Photo
ADD CONSTRAINT Photo_fk_Person FOREIGN KEY (PersonId) 
  REFERENCES Person (Id) 
  ON UPDATE CASCADE
  ON DELETE CASCADE

ALTER TABLE Nationality
ADD CONSTRAINT Nationality_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE MiddleName
ADD CONSTRAINT MiddleName_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE MaritalStatus
ADD CONSTRAINT MaritalStatus_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE LastName
ADD CONSTRAINT LastName_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Gender
ADD CONSTRAINT Gender_fk FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE FirstName
ADD CONSTRAINT FirstName_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE DocumentKind
ADD CONSTRAINT DocumentKind_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Organization
ADD CONSTRAINT Organization_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Organization
ADD CONSTRAINT Organization_fk_Place FOREIGN KEY (PlaceId) 
  REFERENCES Place (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Department
ADD CONSTRAINT Department_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Module
ADD CONSTRAINT Module_fk_Module FOREIGN KEY (ParentId) 
  REFERENCES Module (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Module
ADD CONSTRAINT Module_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Filial
ADD CONSTRAINT Filial_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Filial
ADD CONSTRAINT Filial_fk_Organization FOREIGN KEY (OrganizationId) 
  REFERENCES Organization (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Faculty
ADD CONSTRAINT Faculty_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE BuildingStructure
ADD CONSTRAINT BuildingStructure_fk_BuildingStructure FOREIGN KEY (ParentId) 
  REFERENCES BuildingStructure (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE BuildingStructure
ADD CONSTRAINT BuildingStructure_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE BuildingStructure
ADD CONSTRAINT BuildingStructure_fk_Organization FOREIGN KEY (OrganizationId) 
  REFERENCES Organization (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE BuildingStructure
ADD CONSTRAINT BuildingStructure_fk_Place FOREIGN KEY (PlaceId) 
  REFERENCES Place (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Language
ADD CONSTRAINT Language_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE ChangeLog
ADD CONSTRAINT ChangeLog_fk_Person FOREIGN KEY (PersonId) 
  REFERENCES Person (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE ChatPerson
ADD CONSTRAINT ChatPerson_fk_Person FOREIGN KEY (PersonId) 
  REFERENCES Person (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE ClassType
ADD CONSTRAINT ClassType_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE WorkStatusChangeReason
ADD CONSTRAINT WorkStatusChangeReason_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE WorkStatus
ADD CONSTRAINT WorkStatus_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Post
ADD CONSTRAINT Post_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE OrderType
ADD CONSTRAINT OrderType_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE OrderType
ADD CONSTRAINT OrderType_fk_OrderType FOREIGN KEY (ParentId) 
  REFERENCES OrderType (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE SpecialityGroup
ADD CONSTRAINT SpecialityGroup_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationStatus
ADD CONSTRAINT Status_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Quota
ADD CONSTRAINT Quota_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE InformationSource
ADD CONSTRAINT InformationSource_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE ScientificDirection
ADD CONSTRAINT ScientificDirection_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationPeriod
ADD CONSTRAINT EducationPeriod_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationForm
ADD CONSTRAINT EducationForm_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationDirection
ADD CONSTRAINT EducationDirection_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationStatusChangeReason
ADD CONSTRAINT EducationStatusChangeReason_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE PaymentForm
ADD CONSTRAINT PaymentForm_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationProgramLanguage
ADD CONSTRAINT EducationProgramLanguage_fk_EducationProgram FOREIGN KEY (EducationProgramId) 
  REFERENCES EducationProgram (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationProgramLanguage
ADD CONSTRAINT EducationProgramLanguage_fk_EducationYear FOREIGN KEY (EducationYearId) 
  REFERENCES EducationYear (Id) 
  ON UPDATE SET NULL
  ON DELETE SET NULL

ALTER TABLE EducationProgramLanguage
ADD CONSTRAINT EducationProgramLanguage_fk_Language FOREIGN KEY (LanguageId) 
  REFERENCES Language (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationProgramLanguage
ADD CONSTRAINT EducationProgramLanguage_fk_Qualification FOREIGN KEY (QualificationId) 
  REFERENCES Qualification (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE CurriculumModelCompitention
ADD CONSTRAINT CurriculumModelCompitention_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE CurriculumModelComponent
ADD CONSTRAINT CurriculumModelComponent_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE CurriculumModelCycle
ADD CONSTRAINT CurriculumModelCycle_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Subject
ADD CONSTRAINT Subject_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Discipline
ADD CONSTRAINT Discipline_fk_EducationLevel FOREIGN KEY (EducationLevelId) 
  REFERENCES EducationLevel (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Discipline
ADD CONSTRAINT Discipline_fk_Language FOREIGN KEY (LanguageId) 
  REFERENCES Language (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Discipline
ADD CONSTRAINT Discipline_fk_OrganizationStructure FOREIGN KEY (OrganizationStructureId) 
  REFERENCES OrganizationStructure (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Discipline
ADD CONSTRAINT Discipline_fk_Subject FOREIGN KEY (SubjectId) 
  REFERENCES Subject (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE CurriculumModelControlForm
ADD CONSTRAINT CurriculumModelControlForm_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationPointOld
ADD CONSTRAINT EducationPointOld_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE CurriculumModelClassType
ADD CONSTRAINT CurriculumModelClassType_fk_ClassType FOREIGN KEY (ClassTypeId) 
  REFERENCES ClassType (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE CurriculumModelClassType
ADD CONSTRAINT CurriculumModelClassType_fk_CurriculumModel FOREIGN KEY (CurriculumModelId) 
  REFERENCES CurriculumModel (Id) 
  ON UPDATE CASCADE
  ON DELETE CASCADE

ALTER TABLE CurriculumModelControlFormPoint
ADD CONSTRAINT CurriculumModelControlForm_fk_CurriculumModelControlForm FOREIGN KEY (ControlFormId) 
  REFERENCES CurriculumModelControlForm (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE CurriculumModelControlFormPoint
ADD CONSTRAINT EducationControlFormPoint_fk_EducationPoint FOREIGN KEY (PointId) 
  REFERENCES EducationPoint (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE CurriculumModelCredit
ADD CONSTRAINT CurriculumModelCredit_fk_EducationDirection FOREIGN KEY (EducationDirectionId) 
  REFERENCES EducationDirection (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE CurriculumModelCredit
ADD CONSTRAINT CurriculumModelCredit_fk_EducationForm FOREIGN KEY (EducationFormId) 
  REFERENCES EducationForm (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE CurriculumModelCredit
ADD CONSTRAINT CurriculumModelCredit_fk_EducationLevel FOREIGN KEY (EducationLevelId) 
  REFERENCES EducationLevel (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE CurriculumModelCreditСlassType
ADD CONSTRAINT CurriculumModelCreditClassType_fk_ClassType FOREIGN KEY (ClassTypeId) 
  REFERENCES ClassType (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE CurriculumModelCreditСlassType
ADD CONSTRAINT CurriculumModelCreditClassType_fk_CurriculumModelCredit FOREIGN KEY (CurriculumModelCreditId) 
  REFERENCES CurriculumModelCredit (Id) 
  ON UPDATE CASCADE
  ON DELETE CASCADE

ALTER TABLE CurriculumModelCurriculumModelControlForm
ADD CONSTRAINT CurriculumModelCurriculumModelControlForm_fk_CurriculumModel FOREIGN KEY (CurriculumModelId) 
  REFERENCES CurriculumModel (Id) 
  ON UPDATE CASCADE
  ON DELETE CASCADE

ALTER TABLE CurriculumModelCurriculumModelControlForm
ADD CONSTRAINT CurriculumModelCurriculumModelControlForm_fk_CurriculumModelControlForm FOREIGN KEY (CurriculumModelControlFormId) 
  REFERENCES CurriculumModelControlForm (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Diagnos
ADD CONSTRAINT Diagnos_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Disability
ADD CONSTRAINT Disability_fk_Diagnos FOREIGN KEY (DiagnosId) 
  REFERENCES Diagnos (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Disability
ADD CONSTRAINT Disability_fk_Person FOREIGN KEY (PersonId) 
  REFERENCES Person (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE DisciplineWork
ADD CONSTRAINT DisciplineWork_fk_Discipline FOREIGN KEY (DisciplineId) 
  REFERENCES Discipline (Id) 
  ON UPDATE CASCADE
  ON DELETE CASCADE

ALTER TABLE DisciplineWork
ADD CONSTRAINT DisciplineWork_fk_Work FOREIGN KEY (WorkId) 
  REFERENCES Work (Id) 
  ON UPDATE CASCADE
  ON DELETE CASCADE

ALTER TABLE EducationCalendarItem
ADD CONSTRAINT EducationCalendarItem_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationDocumentSupplement
ADD CONSTRAINT EducationDocumentSupplement_fk_Credit FOREIGN KEY (CreditId) 
  REFERENCES CurriculumModelCredit (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationDocumentSupplement
ADD CONSTRAINT EducationDocumentSupplement_fk_EducationDocument FOREIGN KEY (EducationDocumentId) 
  REFERENCES EducationDocument (Id) 
  ON UPDATE CASCADE
  ON DELETE CASCADE

ALTER TABLE EducationDocumentSupplement
ADD CONSTRAINT EducationDocumentSupplement_fk_EducationPoint FOREIGN KEY (EducationPointId) 
  REFERENCES EducationPoint (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationDocumentSupplement
ADD CONSTRAINT EducationDocumentSupplement_fk_EducationPointOld FOREIGN KEY (EducationPointOldId) 
  REFERENCES EducationPointOld (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationFlow
ADD CONSTRAINT EducationFlow_fk_ClassType FOREIGN KEY (ClassTypeId) 
  REFERENCES ClassType (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationFlow
ADD CONSTRAINT EducationFlow_fk_EducationYear FOREIGN KEY (EducationYearId) 
  REFERENCES EducationYear (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationFlow
ADD CONSTRAINT EducationFlow_fk_Language FOREIGN KEY (LanguageId) 
  REFERENCES Language (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationFlow
ADD CONSTRAINT EducationFlow_fk_Subject FOREIGN KEY (SubjectId) 
  REFERENCES Subject (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationFlow
ADD CONSTRAINT EducationFlow_fk_Work FOREIGN KEY (WorkId) 
  REFERENCES Work (Id) 
  ON UPDATE SET NULL
  ON DELETE SET NULL

ALTER TABLE EducationLevelFormClassType
ADD CONSTRAINT EducationLevelFormClassType_fk_ClassType FOREIGN KEY (ClassTypeId) 
  REFERENCES ClassType (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationLevelFormClassType
ADD CONSTRAINT EducationLevelFormClassType_fk_EducationForm FOREIGN KEY (EducationFormId) 
  REFERENCES EducationForm (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationLevelFormClassType
ADD CONSTRAINT EducationLevelFormClassType_fk_EducationLevel FOREIGN KEY (EducationLevelId) 
  REFERENCES EducationLevel (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationLoad
ADD CONSTRAINT EducationLoad_fk FOREIGN KEY (FilialId) 
  REFERENCES Filial (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationLoad
ADD CONSTRAINT EducationLoad_fk_Discipline FOREIGN KEY (DisciplineId) 
  REFERENCES Discipline (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationLoad
ADD CONSTRAINT EducationLoad_fk_EducationForm FOREIGN KEY (EducationFormId) 
  REFERENCES EducationForm (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationLoad
ADD CONSTRAINT EducationLoad_fk_EducationPeriod FOREIGN KEY (EducationPeriodId) 
  REFERENCES EducationPeriod (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationLoad
ADD CONSTRAINT EducationLoad_fk_EducationYear FOREIGN KEY (EducationYearId) 
  REFERENCES EducationYear (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationLoad
ADD CONSTRAINT EducationLoad_fk_Work FOREIGN KEY (WorkId) 
  REFERENCES Work (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationLoadGroup
ADD CONSTRAINT EducationLoadGroup_fk_EducationLoad FOREIGN KEY (EducationLoadId) 
  REFERENCES EducationLoad (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationLoadGroup
ADD CONSTRAINT EducationLoadGroup_fk_EducationProgram FOREIGN KEY (EducationProgramId) 
  REFERENCES EducationProgram (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationOrder
ADD CONSTRAINT EducationOrder_fk_Education FOREIGN KEY (EducationId) 
  REFERENCES Education (Id) 
  ON UPDATE CASCADE
  ON DELETE CASCADE

ALTER TABLE EducationOrder
ADD CONSTRAINT EducationOrder_fk_EducationStatus FOREIGN KEY (EducationStatusId) 
  REFERENCES EducationStatus (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationOrder
ADD CONSTRAINT EducationOrder_fk_EducationStatusChangeReason FOREIGN KEY (EducationStatusChangeReasonId) 
  REFERENCES EducationStatusChangeReason (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationOrder
ADD CONSTRAINT EducationOrder_fk_EducationYear FOREIGN KEY (EducationYearId) 
  REFERENCES EducationYear (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationOrder
ADD CONSTRAINT EducationOrder_fk_Order FOREIGN KEY (OrderId) 
  REFERENCES OrderN (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationOrderBlank
ADD CONSTRAINT EducationOrderBlank_fk FOREIGN KEY (EducationLevelAfterId) 
  REFERENCES EducationLevel (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationOrderBlank
ADD CONSTRAINT EducationOrderBlank_fk_EducationForm FOREIGN KEY (EducationFormId) 
  REFERENCES EducationForm (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationOrderBlank
ADD CONSTRAINT EducationOrderBlank_fk_EducationLevelBefore FOREIGN KEY (EducationLevelBeforeId) 
  REFERENCES EducationLevel (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationOrderBlank
ADD CONSTRAINT EducationOrderBlank_fk_Filial FOREIGN KEY (FilialId) 
  REFERENCES Filial (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationOrderBlank
ADD CONSTRAINT EducationOrderBlank_fk_Order FOREIGN KEY (OrderId) 
  REFERENCES OrderN (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationOrderBlank
ADD CONSTRAINT EducationOrderBlank_fk_PaymentForm FOREIGN KEY (PaymentFormId) 
  REFERENCES PaymentForm (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationOrderBlankWorkPlace
ADD CONSTRAINT EducationOrderBlankWorkPlace_fk_EducationOrderBlank FOREIGN KEY (EducationOrderBlankId) 
  REFERENCES EducationOrderBlank (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationOrderBlankWorkPlace
ADD CONSTRAINT EducationOrderBlankWorkPlace_fk_WorkPlace FOREIGN KEY (WorkPlaceId) 
  REFERENCES WorkPlace (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE PrivilegedCategory
ADD CONSTRAINT PrivilegedCategory_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationProgramCertificateSubject
ADD CONSTRAINT EducationProgramCertificateSubject_fk_EducationProgram FOREIGN KEY (EducationProgramId) 
  REFERENCES EducationProgram (Id) 
  ON UPDATE CASCADE
  ON DELETE CASCADE

ALTER TABLE EducationProgramCertificateSubject
ADD CONSTRAINT EducationProgramCertificateSubject_fk_Language FOREIGN KEY (LanguageId) 
  REFERENCES Language (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationProgramCertificateSubject
ADD CONSTRAINT EducationProgramCertificateSubject_fk_Subject FOREIGN KEY (SubjectId) 
  REFERENCES Subject (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationProgramClassType
ADD CONSTRAINT EducationProgramClassType_fk_ClassType FOREIGN KEY (ClassTypeId) 
  REFERENCES ClassType (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationProgramClassType
ADD CONSTRAINT EducationProgramClassType_fk_EducationProgram FOREIGN KEY (EducationProgramId) 
  REFERENCES EducationProgram (Id) 
  ON UPDATE CASCADE
  ON DELETE CASCADE

ALTER TABLE EducationProgramStatus
ADD CONSTRAINT EducationProgramStatus_fk_EducationProgram FOREIGN KEY (EducationProgramId) 
  REFERENCES EducationProgram (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationProgramStatus
ADD CONSTRAINT EducationProgramStatus_fk_EducationStatus FOREIGN KEY (EducationStatusId) 
  REFERENCES EducationStatus (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationProgramWorkPlace
ADD CONSTRAINT EducationProgramLanguageWorkPlace_fk_EducationProgramLanguage FOREIGN KEY (EducationProgramLanguageId) 
  REFERENCES EducationProgramLanguage (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE EducationProgramWorkPlace
ADD CONSTRAINT EducationProgramLanguageWorkPlace_fk_WorkPlace FOREIGN KEY (WorkPlaceId) 
  REFERENCES WorkPlace (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Facultativ
ADD CONSTRAINT Facultativ_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE File
ADD CONSTRAINT File_fk_Person FOREIGN KEY (PersonId) 
  REFERENCES Person (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Instructor
ADD CONSTRAINT Instructor_fk_Employee FOREIGN KEY (WorkId) 
  REFERENCES Work (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE InstructorSubjectLanguage
ADD CONSTRAINT InstructorSubjectLanguage_fk_Instructor FOREIGN KEY (InstructorId) 
  REFERENCES Instructor (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE InstructorSubjectLanguage
ADD CONSTRAINT InstructorSubjectLanguage_fk_Language FOREIGN KEY (LanguageId) 
  REFERENCES Language (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE InstructorSubjectLanguage
ADD CONSTRAINT InstructorSubjectLanguage_fk_Subject FOREIGN KEY (SubjectId) 
  REFERENCES Subject (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Kin
ADD CONSTRAINT Kin_fk_Kinship FOREIGN KEY (KinshipId) 
  REFERENCES Kinship (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Kin
ADD CONSTRAINT Kin_fk_PersonChild FOREIGN KEY (PersonChildId) 
  REFERENCES Person (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE Kin
ADD CONSTRAINT Kin_fk_PersonParent FOREIGN KEY (PersonParentId) 
  REFERENCES Person (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE LanguageLevel
ADD CONSTRAINT LanguageLevel_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE OrderWork
ADD CONSTRAINT OrderWork_fk_Order FOREIGN KEY (OrderId) 
  REFERENCES OrderN (Id) 
  ON UPDATE CASCADE
  ON DELETE CASCADE

ALTER TABLE OrderWork
ADD CONSTRAINT OrderWork_fk_Work FOREIGN KEY (WorkId) 
  REFERENCES Work (Id) 
  ON UPDATE CASCADE
  ON DELETE CASCADE

ALTER TABLE OrganizationEducationKind
ADD CONSTRAINT OrganizationEducationKind_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE OrganizationRelation
ADD CONSTRAINT OrganizationRelation_fk_File FOREIGN KEY (FileId) 
  REFERENCES File (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE OrganizationRelation
ADD CONSTRAINT OrganizationRelation_fk_Organization FOREIGN KEY (OrganizationId) 
  REFERENCES Organization (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE OrganizationRelation
ADD CONSTRAINT OrganizationRelation_fk_OrganizationRelation FOREIGN KEY (RelationOrganozationId) 
  REFERENCES Organization (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE OrganizationRelationTag
ADD CONSTRAINT OrganizationRelationTag_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE PersonFacultativ
ADD CONSTRAINT EducationFacultativ_fk_Education FOREIGN KEY (PersonId) 
  REFERENCES Person (Id) 
  ON UPDATE CASCADE
  ON DELETE CASCADE

ALTER TABLE PersonFacultativ
ADD CONSTRAINT EducationFacultativ_fk_Facultativ FOREIGN KEY (FacultativId) 
  REFERENCES Facultativ (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE PersonLanguage
ADD CONSTRAINT PersonLanguage_fk_Language FOREIGN KEY (LanguageId) 
  REFERENCES Language (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE PersonLanguage
ADD CONSTRAINT PersonLanguage_fk_LanguageLevel FOREIGN KEY (LanguageLevelId) 
  REFERENCES LanguageLevel (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE PersonLanguage
ADD CONSTRAINT PersonLanguage_fk_Person FOREIGN KEY (PersonId) 
  REFERENCES Person (Id) 
  ON UPDATE CASCADE
  ON DELETE CASCADE

ALTER TABLE SportAchievement
ADD CONSTRAINT SportAchievement_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE StateAward
ADD CONSTRAINT StateAward_fk_Name FOREIGN KEY (NameId) 
  REFERENCES Name (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE StateAward
ADD CONSTRAINT StateAward_fk_Place FOREIGN KEY (CountryPlaceId) 
  REFERENCES Place (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE PhoneOperator
ADD CONSTRAINT PhoneOperator_fk_Place FOREIGN KEY (PlaceId) 
  REFERENCES Place (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE PlaceHierarhyRelation
ADD CONSTRAINT PlaceHierarhyRelation_fk_PlaceHierarhy FOREIGN KEY (PlaceHierarhyParentId) 
  REFERENCES PlaceHierarhy (Id) 
  ON UPDATE CASCADE
  ON DELETE CASCADE

ALTER TABLE PlaceHierarhyRelation
ADD CONSTRAINT PlaceHierarhyRelation_fk_PlaceHierarhy1 FOREIGN KEY (PlaceHierarhyChildrenId) 
  REFERENCES PlaceHierarhy (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE SpecialityGroupSubject
ADD CONSTRAINT SpecialityGroupSubject_fk_SpecialityGroup FOREIGN KEY (SpecialityGroupId) 
  REFERENCES SpecialityGroup (Id) 
  ON UPDATE CASCADE
  ON DELETE CASCADE

ALTER TABLE SpecialityGroupSubject
ADD CONSTRAINT SpecialityGroupSubject_fk_Subject FOREIGN KEY (SubjectId) 
  REFERENCES Subject (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE SubjectPoint
ADD CONSTRAINT SubjectPoint_fk_Certificate FOREIGN KEY (CertificateId) 
  REFERENCES Certificate (Id) 
  ON UPDATE CASCADE
  ON DELETE CASCADE

ALTER TABLE SubjectPoint
ADD CONSTRAINT SubjectPoint_fk_Subject FOREIGN KEY (SubjectId) 
  REFERENCES Subject (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE WorkExperience
ADD CONSTRAINT WorkExperience_fk_Department FOREIGN KEY (DepartmentId) 
  REFERENCES Department (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE WorkExperience
ADD CONSTRAINT WorkExperience_fk_Organization FOREIGN KEY (OrganizationId) 
  REFERENCES Organization (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE WorkExperience
ADD CONSTRAINT WorkExperience_fk_Person FOREIGN KEY (PersonId) 
  REFERENCES Person (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE WorkExperience
ADD CONSTRAINT WorkExperience_fk_Post FOREIGN KEY (PostId) 
  REFERENCES Post (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE WorkExperience
ADD CONSTRAINT WorkExperience_fk_WorkId FOREIGN KEY (WorkId) 
  REFERENCES Work (Id) 
  ON UPDATE SET NULL
  ON DELETE SET NULL

ALTER TABLE WorkExperience
ADD CONSTRAINT WorkExperience_fk_WorkStatusChangeReason FOREIGN KEY (WorkStatusChangeReasonId) 
  REFERENCES WorkStatusChangeReason (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

///--------------
ALTER TABLE UsersIPPModule
ADD CONSTRAINT UsersIPPModule_fk_Person FOREIGN KEY (PersonId) 
  REFERENCES Person (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE TeachingLoad
ADD CONSTRAINT TeachingLoad_fk_Person FOREIGN KEY (PersonId) 
  REFERENCES Person (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE TeachingLoad
ADD CONSTRAINT TeachingLoad_fk_Subject FOREIGN KEY (SubjectId) 
  REFERENCES Subject (Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE TeachingLoad
ADD CONSTRAINT TeachingLoad_fk_EducationYear FOREIGN KEY (EducationYearId ) 
  REFERENCES EducationYear(Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

ALTER TABLE TeachingLoad
ADD CONSTRAINT TeachingLoad_fk_Group FOREIGN KEY (GroupId ) 
  REFERENCES GroupN(Id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION

