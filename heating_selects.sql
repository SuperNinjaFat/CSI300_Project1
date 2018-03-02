# What is the relationship between the current building value and the heating type?
SELECT CurrentValue, HeatType FROM test.city_of_burlington_property_details
ORDER BY CurrentValue DESC, HeatType;


# What type of heating does the top 10 largest house use?
SELECT HeatType, HeatFuel, TotalGrossArea FROM test.city_of_burlington_property_details
ORDER BY TotalGrossArea DESC, HeatType DESC, HeatFuel DESC
LIMIT 10;

# What is the top 10 streets for the top gas type?
SELECT CurrentValue, StreetName, StreetNumber FROM test.city_of_burlington_property_details;
SELECT HeatType, HeatFuel, TotalGrossArea FROM test.city_of_burlington_property_details
ORDER BY TotalGrossArea DESC, HeatType DESC, HeatFuel DESC
LIMIT 10;

# Which are older, gas houses or electric houses?


# What heating type was most popular in each decade?
 
