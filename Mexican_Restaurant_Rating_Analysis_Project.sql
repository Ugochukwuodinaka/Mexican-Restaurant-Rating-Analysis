--  Data Cleaning, Transformation and Loading using MS Sql Server:
-- 1. Made sure that all the data types of the table "consumers" in this dataset are of the right data type.
-- 2. Replaced the null cells in "Transportation_Method", "Marital_Status", "Budget", and "Occupation" fields of the "consumers" table with "Not-Stated".
-- 3. Replaced the null cells in "Children" and "Smoker" fields of the "consumers" table with "Not-Known".
-- 4. Made sure that all the data types of the table "rating" in this dataset are of the right data type.
-- 5. Added a new field "Restaurant_Rating" to the "ratings" table which extracts the data in the the "Overall_Rating" Field and transforms them into "Highly Satisfactory", "Satisfactory", and "Unsatisfactory".
-- 6. Changed the data types of the 2 fields in the "restaurant_cuisines" table to the right data types: "Restaurant_ID (int)", "Cuisine (text)".
-- 7. Made sure that all the data types of the table "restaurants" in this dataset are of the right data type.

SELECT * FROM dbo.consumer_preferences;
SELECT * FROM dbo.consumers;
SELECT * FROM dbo.ratings;
SELECT * FROM dbo.restaurant_cuisines;
SELECT * FROM dbo.restaurants;

-- 1. Made sure that all the data types of the table "consumers" in this dataset are of the right data type.
EXEC sp_help 'consumers';
SELECT * FROM dbo.consumers;


-- 2. Replaced the null cells in "Transportation_Method", "Marital_Status", "Budget", and "Occupation" fields of the "consumers" table with "Not-Stated".
UPDATE consumers
SET Transportation_Method = 'Not Stated'
WHERE Transportation_Method IS NULL;

SELECT * FROM dbo.consumers;


UPDATE consumers
SET Marital_Status = 'Not Stated'
WHERE Marital_Status IS NULL;

SELECT * FROM dbo.consumers;


UPDATE consumers
SET Budget = 'Not Stated'
WHERE Budget IS NULL;

SELECT * FROM dbo.consumers;


UPDATE consumers
SET Occupation = 'Not Stated'
WHERE Occupation IS NULL;

SELECT * FROM dbo.consumers;


-- 3. Replaced the null cells in "Children" and "Smoker" fields of the "consumers" table with "Not-Known".
UPDATE consumers
SET Children = 'Not Known'
WHERE Children IS NULL;

SELECT * FROM dbo.consumers;


UPDATE consumers
SET Smoker = 'Not Known'
WHERE Smoker IS NULL;

SELECT * FROM dbo.consumers;


-- 4. Made sure that all the data types of the table "rating" in this dataset are of the right data type.
EXEC sp_help 'ratings';
SELECT * FROM ratings;


-- 5. Added a new field "Restaurant_Rating" to the "ratings" table which extracts the data in the the "Overall_Rating" Field and transforms 
--    them into "Highly Satisfactory", "Satisfactory", and "Unsatisfactory".
ALTER TABLE ratings
ADD Restaurant_Rating TEXT;

SELECT * FROM ratings;


UPDATE ratings
SET Restaurant_Rating = CASE Overall_Rating
                                 WHEN 2 THEN 'Highly Satisfactory'
								 WHEN 1 THEN 'Satisfactory'
								 WHEN 0 THEN 'Unsatisfactory'
								 ELSE ' ' 
						END;

SELECT * FROM ratings;


-- 6. Changed the data types of the 2 fields in the "restaurant_cuisines" table to the right data types: "Restaurant_ID (int)", "Cuisine (text)".
SELECT * FROM restaurant_cuisines;

ALTER TABLE restaurant_cuisines
ALTER COLUMN Restaurant_ID INT;

ALTER TABLE restaurant_cuisines
ALTER COLUMN Cuisine TEXT;

SELECT * FROM restaurant_cuisines;

-- 7. Made sure that all the data types of the table "restaurants" in this dataset are of the right data type.
EXEC sp_help 'restaurants';
SELECT * FROM restaurants;