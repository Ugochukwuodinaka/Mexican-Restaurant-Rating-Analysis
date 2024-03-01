--  Data Cleaning, Transformation and Loading using MS Sql Server:
-- 1. Changed all data types of the fields in the "consumers" table to the right data types.
-- 2. Replaced the null cells in "Transportation_Method", "Marital_Status", "Budget", and "Occupation" fields of the "consumers" table with "Not-Stated".
-- 3. Replaced the null cells in "Children" and "Smoker" fields of the "consumers" table with "Not-Known".
-- 4. Changed the data types of the fields in the "ratings" table to the right data types.
-- 5. Added a new field "Restaurant_Rating" to the "ratings" table which extracts the data in the the "Overall_Rating" Field and transforms them into "Highly Satisfactory", "Satisfactory", and "Unsatisfactory".
-- 6. Changed the data types of the 2 fields in the "restaurant_cuisines" table to the right data types: "Restaurant_ID (int)", "Cuisine (text)".
-- 7. Changed the data types of the fields in the "restaurants" table to the right data types.
-- 8. Made sure all the fields in the different tables have no null values or empty cells except for the "restaurant" table where column "Zip_Code" has some null cells.

SELECT * FROM dbo.consumer_preferences
SELECT * FROM dbo.consumers
SELECT * FROM dbo.ratings
SELECT * FROM dbo.restaurant_cuisines
SELECT * FROM dbo.restaurants

-- 1. Changed all data types of the fields in the "consumers" table to the right data types.
ALTER TABLE consumers
ALTER COLUMN Consumer_ID VARCHAR(50)
ALTER TABLE consumers
ALTER COLUMN City NVARCHAR(50)
ALTER TABLE consumers
ALTER COLUMN State NVARCHAR(50)
ALTER TABLE consumers
ALTER COLUMN Country NVARCHAR(50)
ALTER TABLE consumers
ALTER COLUMN Latitude FLOAT
ALTER TABLE consumers
ALTER COLUMN Longitude FLOAT
ALTER TABLE consumers
ALTER COLUMN Smoker NVARCHAR(20)
ALTER TABLE consumers
ALTER COLUMN Drink_Level NVARCHAR(50)
ALTER TABLE consumers
ALTER COLUMN Transportation_Method NVARCHAR(20)
ALTER TABLE consumers
ALTER COLUMN Marital_Status NVARCHAR(20)
ALTER TABLE consumers
ALTER COLUMN Children NVARCHAR(20)
ALTER TABLE consumers
ALTER COLUMN Age INT
ALTER TABLE consumers
ALTER COLUMN Occupation NVARCHAR(50)
ALTER TABLE consumers
ALTER COLUMN Budget NVARCHAR(20)
SELECT * FROM dbo.consumers


-- 2. Replaced the null cells in "Transportation_Method", "Marital_Status", "Budget", and "Occupation" fields of the "consumers" table with "Not-Stated".
UPDATE consumers
SET Transportation_Method = 'Not Stated'
WHERE Transportation_Method = ' '
SELECT * FROM dbo.consumers

UPDATE consumers
SET Marital_Status = 'Not Stated'
WHERE Marital_Status = ' '
SELECT * FROM dbo.consumers

UPDATE consumers
SET Budget = 'Not Stated'
WHERE Budget = ' '
SELECT * FROM dbo.consumers

UPDATE consumers
SET Occupation = 'Not Stated'
WHERE Occupation = ' '
SELECT * FROM dbo.consumers

-- 3. Replaced the null cells in "Children" and "Smoker" fields of the "consumers" table with "Not-Known".
UPDATE consumers
SET Children = 'Not Known'
WHERE Children = ' '
SELECT * FROM dbo.consumers

UPDATE consumers
SET Smoker = 'Not Known'
WHERE Smoker = ' '
SELECT * FROM dbo.consumers

-- 4. Changed the data types of the fields in the "ratings" table to the right data types.
SELECT * FROM ratings

ALTER TABLE ratings
ALTER COLUMN Consumer_ID VARCHAR(50)
ALTER TABLE ratings
ALTER COLUMN Restaurant_ID VARCHAR(50)
ALTER TABLE ratings
ALTER COLUMN Overall_Rating INT
ALTER TABLE ratings
ALTER COLUMN Food_Rating INT
ALTER TABLE ratings
ALTER COLUMN Service_Rating INT
SELECT * FROM ratings


-- 5. Added a new field "Restaurant_Rating" to the "ratings" table which extracts the data in the the "Overall_Rating" Field and transforms 
--    them into "Highly Satisfactory", "Satisfactory", and "Unsatisfactory".
ALTER TABLE ratings
ADD Restaurant_Rating TEXT
SELECT * FROM ratings

UPDATE ratings
SET Restaurant_Rating = CASE Overall_Rating
                                 WHEN 2 THEN 'Highly Satisfactory'
								 WHEN 1 THEN 'Satisfactory'
								 WHEN 0 THEN 'Unsatisfactory'
								 ELSE ' ' 
						END;
SELECT * FROM ratings


-- 6. Changed the data types of the 2 fields in the "restaurant_cuisines" table to the right data types: "Restaurant_ID (int)", "Cuisine (text)".
SELECT * FROM restaurant_cuisines

ALTER TABLE restaurant_cuisines
ALTER COLUMN Restaurant_ID INT
ALTER TABLE restaurant_cuisines
ALTER COLUMN Cuisine TEXT

SELECT * FROM restaurant_cuisines

-- 7. Changed the data types of the fields in the "restaurants" table to the right data types.
SELECT * FROM restaurants

ALTER TABLE restaurants
ALTER COLUMN Restaurant_ID INT
ALTER TABLE restaurants
ALTER COLUMN Name NVARCHAR(100)
ALTER TABLE restaurants
ALTER COLUMN City NVARCHAR(50)
ALTER TABLE restaurants
ALTER COLUMN State NVARCHAR(50)
ALTER TABLE restaurants
ALTER COLUMN Country NVARCHAR(50)
ALTER TABLE restaurants
ALTER COLUMN Zip_Code INT
ALTER TABLE restaurants
ALTER COLUMN Latitude FLOAT
ALTER TABLE restaurants
ALTER COLUMN Longitude FLOAT
ALTER TABLE restaurants
ALTER COLUMN Alcohol_Service NVARCHAR(50)
ALTER TABLE restaurants
ALTER COLUMN Smoking_Allowed NVARCHAR(50)
ALTER TABLE restaurants
ALTER COLUMN Price NVARCHAR(50)
ALTER TABLE restaurants
ALTER COLUMN Franchise INT
ALTER TABLE restaurants
ALTER COLUMN Area NVARCHAR(50)
ALTER TABLE restaurants
ALTER COLUMN Parking NVARCHAR(50)

SELECT * FROM restaurants