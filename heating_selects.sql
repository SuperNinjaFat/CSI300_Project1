# What is the relationship between the current building value and the heating type?
SELECT b_housevalue.CurrentValue, b_fueltype.HeatType FROM b_fueltype, b_housevalue
ORDER BY b_housevalue.CurrentValue DESC, b_fueltype.HeatType
LIMIT 10;
#SELECT `HeatType`, `HeatFuel` FROM `test`.`b_fueltype`, `test`.`b_fuel`;
#SELECT `HeatType` FROM `test`.`b_fueltype`;

# What type of heating does the top 10 largest house use?
SELECT ty.HeatType, fu.HeatFuel, ta.TotalGrossArea
FROM b_housearea as ta
left outer join b_fueltype as ty
ON ta.FID = ty.FID
left outer join b_fuel as fu
ON ta.FID = fu.FID
ORDER BY ta.TotalGrossArea DESC, ty.HeatType DESC, fu.HeatFuel DESC
LIMIT 10;

# What is the top 10 streets for the top gas type?
SELECT CurrentValue, StreetName, StreetNumber FROM test.city_of_burlington_property_details;
SELECT HeatType, HeatFuel, TotalGrossArea FROM test.city_of_burlington_property_details
ORDER BY TotalGrossArea DESC, HeatType DESC, HeatFuel DESC
LIMIT 10;

# Which are older, gas houses or electric houses?
SELECT test.burl_heat_type.HeatType, test.burl_heat_fuel.HeatFuel, YearBlt
FROM test.city_of_burlington_property_details as te left outer join test.burl_heat_type as ty
ON te.FID = ty.FID
left outer join test.burl_heat_fuel as fu
ON te.FID = fu.FID
WHERE test.burl_heat_type.HeatType = 'GAS'
LIMIT 10;

SELECT test.burl_heat_type.HeatType, test.burl_heat_fuel.HeatFuel, YearBlt
FROM test.city_of_burlington_property_details as te left outer join test.burl_heat_type as ty
ON te.FID = ty.FID
left outer join test.burl_heat_fuel as fu
ON te.FID = fu.FID
WHERE test.burl_heat_type.HeatType = 'ELECTRIC'
LIMIT 10;

# What heating type was most popular in each decade?
