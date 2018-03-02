# What is the relationship between the current building value and the heating type?
SELECT CurrentValue, HeatType FROM test.city_of_burlington_property_details AS sel1
ORDER BY CurrentValue DESC, HeatType;


# What type of heating does the top 10 largest house use?
SELECT test.burl_heat_type.HeatType, test.burl_heat_fuel.HeatFuel, TotalGrossArea
FROM test.city_of_burlington_property_details as te left outer join test.burl_heat_type as ty
ON te.FID = ty.FID
left outer join test.burl_heat_fuel as fu
ON te.FID = fu.FID
ORDER BY TotalGrossArea DESC, burl_heat_type.HeatType DESC, burl_heat_Fuel.HeatFuel DESC
LIMIT 10;

# What is the top 10 streets for the top gas type?
SELECT CurrentValue, StreetName, StreetNumber FROM test.city_of_burlington_property_details;
SELECT HeatType, HeatFuel, TotalGrossArea FROM test.city_of_burlington_property_details
ORDER BY TotalGrossArea DESC, HeatType DESC, HeatFuel DESC
LIMIT 10;

# Which are older, gas houses or electric houses?


# What heating type was most popular in each decade?
 
SELECT `burl_heat_fuel`.`HeatFuel`,
    `burl_heat_fuel`.`FID`
FROM `test`.`burl_heat_fuel`;
