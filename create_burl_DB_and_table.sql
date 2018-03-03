drop database if exists test;
create database test;
use test;

drop table if exists burl_heat_type;
drop table if exists burl_heat_fuel;
drop table if exists burl;
/*
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
*/

drop database if exists housearea;
drop database if exists fuel;
drop database if exists street;
drop database if exists fueltype;
drop database if exists housevalue;
drop database if exists houseyear;
/*
create database housearea;
create database fuel;
create database street;
create database fueltype;
create database housevalue;
create database houseyear;

use housearea;
use fuel;
use street;
use fueltype;
use housevalue;
use houseyear;
*/
CREATE TABLE b_fuel(
HeatFuel TEXT,
FID INT
);
CREATE TABLE b_fueltype(
HeatType TEXT,
FID INT
);
CREATE TABLE b_housearea(
TotalGrossArea INT,
FID INT
);
CREATE TABLE b_housevalue(
CurrentValue INT,
FID INT
);
CREATE TABLE b_houseyear(
YearBlt INT,
FID INT
);
CREATE TABLE b_street(
StreetName INT,
FID INT
);