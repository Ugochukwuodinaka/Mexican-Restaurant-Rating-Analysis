# Mexican Restaurant Rating Analysis
![](Mexican_Restaurant_image.jpg)


## Project Overview
### Introduction:
The Mexican Restaurant Rating Analysis project delves into the examination and evaluation of Mexican restaurant. Understanding historical trends and patterns in restaurant ratings can provide valuable insights into the evolution of consumer preferences, industry dynamics, and the factors driving success in the Mexican dining landscape during that period. This analysis illuminates restaurant ratings in Mexico by real consumers from 2012, including additional information about each restaurant and their cuisines, and each consumer and their preferences.

## Objectives:
The primary objectives of the Mexican Restaurant Rating (2012) Analysis project are:
- Analyze consumer ratings categorized by budget levels to discern patterns in satisfaction across different spending brackets.
- Determine the distribution of consumers across occupations to understand the demographic composition of restaurant patrons.
- Identify the distribution of restaurants across top 4 cities to assess geographical concentration and market saturation.
- Evaluate restaurant ratings segmented by price categories to understand the relationship between pricing and customer satisfaction.
- Assess restaurant ratings categorized by cuisine types to identify preferences and trends among diners.
- Determine the top 10 preferred cuisines among consumers to highlight popular culinary choices and inform menu planning strategies.
- Identify the top 10 restaurants based on ratings to recognize establishments with exceptional performance and quality.
- Analyze consumer demographics to gain insights into the characteristics and preferences of Mexican restaurant patrons.
- Study consumer drinking/smoking behavior to understand factors influencing dining decisions and preferences, aiding in targeted marketing and service improvements.
- Examine the distribution of preferred cuisines among consumers to identify dominant culinary choices and inform menu offerings.
- Evaluate the top restaurant services related to alcohol/smoking to understand consumer preferences in supplementary offerings and amenities.
- Analyze restaurant overall ratings and cuisine preferences across different locations to identify regional variations and market dynamics.

### Expected Outcomes:
- __Consumer Rating By Budget:__ Clear understanding of consumer satisfaction levels across different budget categories, enabling targeted adjustments to pricing and offerings.
- __Consumer Number By Occupation:__ Comprehensive insight into the demographic distribution of restaurant patrons by occupation, facilitating tailored marketing strategies and service enhancements.
- __Restaurant Number By City:__ Accurate identification of regional restaurant distribution patterns, informing strategic decisions regarding market presence and expansion.
- __Restaurant Rating By Price:__ In-depth understanding of how pricing influences consumer perceptions and satisfaction, guiding pricing strategies for enhanced customer experiences.
- __Restaurant Rating By Cuisine:__ Recognition of popular cuisines and their corresponding ratings, empowering restaurants to refine menus and offerings to align with consumer preferences.
- __Top 10 Preferred Cuisines By Consumers:__ Identification of prevailing culinary trends and preferences, informing menu development strategies and promotional campaigns.
- __Top 10 Restaurants By Rating:__ Recognition of top-performing establishments, providing benchmarks for excellence and inspiring improvement within the industry.
- __Consumer Demography:__ Detailed insights into the demographic makeup of restaurant-goers, facilitating targeted marketing initiatives and personalized customer experiences.
- __Consumer Behavior:__ Enhanced understanding of the factors driving dining decisions, enabling restaurants to tailor services and offerings to meet consumer needs effectively.
- __Distribution of Preferred Cuisines By Consumers:__ Insight into the popularity of various cuisines among consumers, guiding menu planning and marketing efforts to capitalize on consumer preferences.
- __Top Restaurant Services Towards Alcohol/Smoking:__ Identification of preferred supplementary services, guiding restaurants in optimizing offerings to cater to consumer demands and preferences.
- __Restaurant Overall Rating and Cuisines Across Locations:__ Recognition of regional variations in restaurant performance and cuisine preferences, facilitating targeted strategies for different market segments and locations.

### About The Dataset
This dataset is made up of 6 tables which are the data_dictionary, consumer_preferences, restaurant_cuisines, ratings, restaurants, and the consumers table. This dataset was provided by [Quantum Analytics](https://www.quantumanalyticsco.org/). This is a [link](raw_data) to access the raw data folder, and in this folder are all the 6 tables. In this The data_dictionary table makes a description of all the fields in all the tables for a better understanding of them.

Below is a table that describes all the fields in all the tables in this dataset.

| Table                    | Field                    | Description                            |            
|:------------------------ |:------------------------ |:-------------------------------------- |
|Consumers                 | Consumer_ID              | Unique identifier for each consumer    |
|                          | City                     | City where the consumer lives          |
|                          | State                    | State where the consumer lives         |
|                          | Country                    | Country where the consumer lives         |
|                          | Latitude                    | Latitude where the consumer lives        |
|                          | Longitude                    |Longitude where the consumer lives        |
|                          | Smoker                     |Whether the consumer smokes or not         |
|                          | Drink_Level                 |Whether the consumer is an abstemious, causal, or social drinker |
|                          | Transportation_Method        |Whether the consumer transports on foot, by public transport, or by car |
|                          | Marital_Status            |The consumer's marital status (single or married) |
|                          |Children                 |Whether the consumer has dependent/independent children or kids |
|                          |Age                    |The consumer's age                      |
|                          |Occupation                   |The consumer's occupation (student, employed, or unemployed)            |
|                          |Budget                   |The consumer's budget (low, medium, high)         |
|Consumer_Preferences      |Preferred_Cuisine        |Types of food the consumer prefers        |
|Ratings                   |Overall_Rating           |The overall rating by the consumer for the restaurant (0=Unsatisfactory, 1=Satisfactory, 2=Highly Satisfactory)   |
|                          |Food_Rating              |The food's rating by the consumer for the restaurant (0=Unsatisfactory, 1=Satisfactory, 2=Highly Satisfactory)    |
|                          |Service_Rating           |The service rating by the consumer for the restaurant (0=Unsatisfactory, 1=Satisfactory, 2=Highly Satisfactory)    |
|Restaurants               |Restaurant_ID            |Unique identifier for each restaurant  |
|                          |Name                     |The restaurant's name |
|                          |City                     |The restaurant's city|
|                          |State                    |The restaurant's state |
|                          |Country                  |The restaurant's country|
|                          |Zip_Code                 |The restaurat's zip code|
|                          |Latitude                 |The restaurant's latitude|
|                          |Longitude                |The restaurant's longitude|
|                          |Alcohol_Service          |Whether the restaurant seves no alcohol, wine & beer, or a full bar|
|                          |Smoking_Allowed          |Whether any smoking is allowed, including in the bar or in smoking sections|
|                          |Price                    |The restaurant's price (low, medium, high)|
|                          |Franchise                |Whether the restaurant is a franchise|
|                          |Area                     |Whether the restaurant is in an open or closed area|
|                          |Parking                  |Whether the restaurant offers any sort of parking (none, yes, public, valet)|
|Restaurant_Cuisines       |Cuisinese                |Types of food the restaurant serves|

### Tools Used
1. Power Query Editor
    - Was used to:
        1. Extract,
        2. Transform, and
        3. Load all the datasets for this analysis.
           
2. Power BI (Was used to create reports and dashboard for this analysis)
    - The following Power BI Features were incorporated:
        1. DAX
        2. Quick Measures
        3. Page Navigation
        4. Filters
        5. Tooltips
        6. Button

### Data Cleaning, Transformation and Loading using the Power Query Editor:
1. Renamed the 2 columns in the __"consumer_preferences"__ table to the right names: __Consumer_ID__ and __Preferred_Cuisine__ and changed their data types to text.
2. Changed all data types of the fields in the __"consumers"__ table to the right data types.
3. Replaced the null cells in __Transportation_Method__, __Marital_Status__, __Budget__, and __Occupation__ fields of the __"consumers"__ table with "Not-Stated".
4. Replaced the null cells in __Children__ and __Smoker__ fields of the __"consumers"__ table with "Not-Known".
5. Changed the data types of the fields in the __"ratings"__ table to the right data types.
6. Added a new field __"Restaurant_Rating"__ to the __"ratings"__ table which extracts the data in the the __Overall_Rating__ Field and transforms them into _"Highly Satisfactory"_, _"Satisfactory"_, and _"Unsatisfactory"_.
7. Changed the data types of the 2 fields in the __"restaurant_cuisine"__ table to the right data types: _Restaurant_ID (int 64)_, _Cuisine (text)_.
8. Changed the data types of the fields in the __"restaurants"__ table to the right data types.

## Data Model Design
The data required for this analysis are located in various tables. Therefore, data modelling is required. A star Schema is designed with the Company_Lookup table representing the fact table containing all the company names, and to which other dimension tables are modelled or connected to, using the __Company__ column that is common. __Company Lookup__ table has been modelled with:

- __Amazon__ table using the __"Company"__
- __Apple__ table using the __"Company"__
- __Facebook__ table using the __"Company"__
- __Google__ table using the __"Company"__
- __Microsoft__ table using the __"Company"__
- __Netflix__ table using the __"Company"__
- __Tesla__ table using the __"Company"__
- __Uber__ table using the __"Company"__
- __Walmart__ table using the __"Company"__
- __Zoom__ table using the __"Company"__
- __10 Companies__ table using the __"Company"__
