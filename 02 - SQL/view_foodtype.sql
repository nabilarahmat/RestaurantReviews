/*Join view_restaurantlists and view_reviews by foodtype*/
CREATE VIEW view_foodtype AS
WITH foodtype AS (
    SELECT 
        SUBSTRING(r."createdAt"::text, 1, 4) AS year,
        SUBSTRING(r."createdAt"::text, 6, 2) AS month,
        c."FoodType",
        ROUND(AVG(r."overallreview"), 1) AS averageRating,
        COUNT(r."uniqueid") AS totalReview
    FROM view_reviews r
    JOIN view_restaurantlists c ON c."StoreId" = r."StoreId"
    GROUP BY year, month, c."FoodType"
)
SELECT * FROM foodtype;