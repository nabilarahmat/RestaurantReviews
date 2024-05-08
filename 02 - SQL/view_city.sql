/*Join view_restaurantlists and view_reviews by city*/
CREATE VIEW view_city AS
WITH city AS (
    SELECT 
        SUBSTRING(r."createdAt"::text, 1, 4) AS year,
        SUBSTRING(r."createdAt"::text, 6, 2) AS month,
        c."City",
        ROUND(AVG(r."overallreview"), 1) AS averageRating,
        COUNT(r."uniqueid") AS totalReview
    FROM view_reviews r
    JOIN view_restaurantlists c ON c."StoreId" = r."StoreId"
    GROUP BY year, month, c."City"
)
SELECT * FROM city;