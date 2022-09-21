create Database ASM_5DEV
use ASM_5DEV
create table Customer(
 CustomerID varchar(25) primary key ,
 Fullname nvarchar(25) not null,
 Dateofbirth Date not null,
 Phone varchar(15) not null UNIQUE,
 [Address] nvarchar(100) not null,
 Email varchar(50) not null,
 Username varchar(25) not null,
 [Password] varchar(25) not null
)
create table  Staff(
 StaffID varchar(25) primary key, 
 Fullname nvarchar(25) not null,
 Dateofbirth Date not null,
 Gender Bit not null,
 [Address] nvarchar(100) not null,
 Phone varchar(15) not null UNIQUE,
 Email varchar(50) not null,
 Username varchar(25) not null,
 [Password] varchar(25) not null,
 [admin] bit not null
)
create table Product(
 ProductID varchar(25) primary key,
 Productname nvarchar(50) not null,
 [Description] nvarchar(250) not null,
 CategoryID  varchar(25) not null,
 Price float not null,
 Images varchar(100) not null
)
create table Category(
 CategoryID varchar(25) primary key,
 Categoryname nvarchar(50) not null
)
create table Promotion(
 PromotionID varchar(25) primary key,
 Promotionname nvarchar(50) not null,
 Discount float not null,
 StaffID varchar(25) not null,
 ToDate Date not null,
 FromDate Date not null,
 [Status] bit
)
create table PromotionDetail(
 PromotionID varchar(25),
 ProductID varchar(25),
 primary key(PromotionID,ProductID)
)
create table Bill(
 BillID varchar(25) primary key,
 [Date] Date not null,
 CustomerID varchar(25) not null,
 StaffID varchar(25) not null,
 StatusID varchar(25) not null,
 TotalPrice float not  null
)
create table BillDetail(
 BillID varchar(25) ,
 ProductID varchar(25) not null,
 Quantity int not null,
 Price float not null,
 DiscountPrice float,
 primary key(BillID, ProductID)
)
create table [Status](
 StatusID varchar(25) primary key,
 Statusname nvarchar(50) not null
)

