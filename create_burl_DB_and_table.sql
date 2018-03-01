drop database if exists test;
create database test;
use test;

drop table if exists burl;

create table burl(
acct int primary key,
parcel varchar(45),
span varchar(45),
StreetNumber varchar(45),
AltNumber varchar(45),
StreetName varchar(45),
Unit varchar(45),
CuO1LastName varchar(45),
CuO1FirstName varchar(45),
CuO2LastName varchar(45),
CuO2FirstName varchar(45),
CuO3LastName varchar(45),
CuO3FirstName varchar(45),
LandUse varchar(45),
CurrentAcres decimal(6,5),
TotalGrossArea int,
FinishedArea decimal(8,2),
CurrentValue int,
CurrentLandValue int,
CurrentYardItemsValue int,
CurrentBuildingValue int,
BuildingType varchar(45),
HeatFuel varchar(45),
HeatType varchar(45),
Grade varchar(45),
YearBlt int,
SaleDate varchar(45),
SalePrice int,
LegalReference varchar(45),
GrantorLastName	varchar(45),
NumofRooms int,
NumofBedrooms int,
Baths varchar(45),
NumofUnits int,
ZoningCode varchar(45),
Foundation varchar(45),
Depreciation decimal(5,4),
PropertyCenterPoint varchar(45),
FID int
);

select * from burl

