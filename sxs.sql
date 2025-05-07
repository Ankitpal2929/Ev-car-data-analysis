SELECT * FROM ev_data.electriccardata_clean

-- 1.Top 5 Longest Range Electric Cars
SELECT Brand,Model, Range_Km
FROM ev_data.electriccardata_clean
ORDER BY Range_Km DESC
LIMIT 5;

-- 2. Average Battery Size by Brand
SELECT Brand, AVG(Efficiency_WhKm) AS Avg_Efficiency
FROM ev_data.electriccardata_clean
GROUP BY Brand
ORDER BY Avg_Efficiency ASC;

-- 3.Top Speed vs Acceleration 
SELECT Brand, Model, TopSpeed_KmH, AccelSec
FROM ev_data.electriccardata_clean
ORDER BY TopSpeed_KmH DESC
LIMIT 10;

-- 4.Cars Supporting RapidCharge
SELECT Brand, Model, RapidCharge
FROM ev_data.electriccardata_clean
WHERE RapidCharge = 'Yes';

-- 5.Average Price by Segment
SELECT Segment, AVG(PriceEuro) AS Avg_Price
FROM ev_data.electriccardata_clean
GROUP BY Segment
ORDER BY Avg_Price DESC;

-- 6.Plug Type Distribution
SELECT PlugType, COUNT(*) AS Count
FROM ev_data.electriccardata_clean
GROUP BY PlugType
ORDER BY Count DESC;

-- 7.Average Seats per Body Style 
SELECT BodyStyle, AVG(Seats) AS Avg_Seats
FROM ev_data.electriccardata_clean
GROUP BY BodyStyle;

