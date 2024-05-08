/*Join all restaurant list table by area into 1 restaurant list view*/
CREATE VIEW view_RestaurantLists AS
with cyber as (
	SELECT 
	    r."StoreId",
	    r."CompleteStoreName" as storename,
	    r."FoodType",
	    r."AverageRating",
	    r."City",
	    COALESCE(rev.customer_count, 0) AS TotalCustomer,
	    rev.multiple_reviews_reviewers as TotalReturningCustomer,
	    COALESCE(rev.review_count, 0) AS TotalReview
	FROM restaurant_cyberjaya r
	LEFT JOIN (
	    SELECT 
	        rc."StoreId" as storeid,
	        COUNT(DISTINCT rc."reviewerId") AS customer_count,
	        COUNT(DISTINCT uuid) AS review_count,
	        COUNT(DISTINCT CASE WHEN sub_rc.review_count > 1 THEN sub_rc."reviewerId" END) AS multiple_reviews_reviewers
	    FROM reviews_cyberjaya rc
	    LEFT JOIN (
	        SELECT "StoreId", "reviewerId", COUNT(*) as review_count
	        FROM reviews_cyberjaya
	        GROUP BY "StoreId", "reviewerId"
	    ) sub_rc ON rc."StoreId" = sub_rc."StoreId" AND rc."reviewerId" = sub_rc."reviewerId"
	    GROUP BY rc."StoreId"
	) rev ON r."StoreId" = rev.storeid ),
kajang as 
	(SELECT 
	    k."StoreId",
	    k."CompleteStoreName" as storename,
	    k."FoodType",
	    k."AverageRating",
	    k."City",
	    COALESCE(revk.customer_count, 0) AS TotalCustomer,
	    revk.multiple_reviews_reviewers as TotalReturningCustomer,
	    COALESCE(revk.review_count, 0) AS TotalReview
	FROM restaurant_kajang k
	LEFT JOIN (
	    SELECT 
	        rk."StoreId" as storeid,
	        COUNT(DISTINCT rk."reviewerId") AS customer_count,
	        COUNT(DISTINCT uuid) AS review_count,
	        COUNT(DISTINCT CASE WHEN sub_rk.review_count > 1 THEN sub_rk."reviewerId" END) AS multiple_reviews_reviewers
	    FROM reviews_kajang rk
	    LEFT JOIN (
	        SELECT "StoreId", "reviewerId", COUNT(*) as review_count
	        FROM reviews_kajang
	        GROUP BY "StoreId", "reviewerId"
	    ) sub_rk ON rk."StoreId" = sub_rk."StoreId" AND rk."reviewerId" = sub_rk."reviewerId"
	    GROUP BY rk."StoreId"
	) revk ON k."StoreId" = revk.storeid ),
klang as 
	(SELECT 
	    klg."StoreId",
	    klg."CompleteStoreName" as storename,
	    klg."FoodType",
	    klg."AverageRating",
	    klg."City",
	    COALESCE(revklg.customer_count, 0) AS TotalCustomer,
	    revklg.multiple_reviews_reviewers as TotalReturningCustomer,
	    COALESCE(revklg.review_count, 0) AS TotalReview
	FROM restaurant_klang klg
	LEFT JOIN (
	    SELECT 
	        rklg."StoreId" as storeid,
	        COUNT(DISTINCT rklg."reviewerId") AS customer_count,
	        COUNT(DISTINCT uuid) AS review_count,
	        COUNT(DISTINCT CASE WHEN sub_rklg.review_count > 1 THEN sub_rklg."reviewerId" END) AS multiple_reviews_reviewers
	    FROM reviews_klang rklg
	    LEFT JOIN (
	        SELECT "StoreId", "reviewerId", COUNT(*) as review_count
	        FROM reviews_klang
	        GROUP BY "StoreId", "reviewerId"
	    ) sub_rklg ON rklg."StoreId" = sub_rklg."StoreId" AND rklg."reviewerId" = sub_rklg."reviewerId"
	    GROUP BY rklg."StoreId"
	) revklg ON klg."StoreId" = revklg.storeid ),
kl as 
	(SELECT 
	    kl."StoreId",
	    kl."CompleteStoreName" as storename,
	    kl."FoodType",
	    kl."AverageRating",
	    kl."City",
	    COALESCE(revkl.customer_count, 0) AS TotalCustomer,
	    revkl.multiple_reviews_reviewers as TotalReturningCustomer,
	    COALESCE(revkl.review_count, 0) AS TotalReview
	FROM restaurant_kuala_lumpur kl
	LEFT JOIN (
	    SELECT 
	        rkl."StoreId" as storeid,
	        COUNT(DISTINCT rkl."reviewerId") AS customer_count,
	        COUNT(DISTINCT uuid) AS review_count,
	        COUNT(DISTINCT CASE WHEN sub_rkl.review_count > 1 THEN sub_rkl."reviewerId" END) AS multiple_reviews_reviewers
	    FROM reviews_kl rkl
	    LEFT JOIN (
	        SELECT "StoreId", "reviewerId", COUNT(*) as review_count
	        FROM reviews_kl
	        GROUP BY "StoreId", "reviewerId"
	    ) sub_rkl ON rkl."StoreId" = sub_rkl."StoreId" AND rkl."reviewerId" = sub_rkl."reviewerId"
	    GROUP BY rkl."StoreId"
	) revkl ON kl."StoreId" = revkl.storeid ),
petalingjaya as 
	(SELECT 
	    pj."StoreId",
	    pj."CompleteStoreName" as storename,
	    pj."FoodType",
	    pj."AverageRating",
	    pj."City",
	    COALESCE(revpj.customer_count, 0) AS TotalCustomer,
	    revpj.multiple_reviews_reviewers as TotalReturningCustomer,
	    COALESCE(revpj.review_count, 0) AS TotalReview
	FROM restaurant_petaling_jaya pj
	LEFT JOIN (
	    SELECT 
	        rpj."StoreId" as storeid,
	        COUNT(DISTINCT rpj."reviewerId") AS customer_count,
	        COUNT(DISTINCT uuid) AS review_count,
	        COUNT(DISTINCT CASE WHEN sub_rpj.review_count > 1 THEN sub_rpj."reviewerId" END) AS multiple_reviews_reviewers
	    FROM reviews_petaling_jaya rpj
	    LEFT JOIN (
	        SELECT "StoreId", "reviewerId", COUNT(*) as review_count
	        FROM reviews_petaling_jaya
	        GROUP BY "StoreId", "reviewerId"
	    ) sub_rpj ON rpj."StoreId" = sub_rpj."StoreId" AND rpj."reviewerId" = sub_rpj."reviewerId"
	    GROUP BY rpj."StoreId"
	) revpj ON pj."StoreId" = revpj.storeid ),
puchong as 
	(SELECT 
	    p."StoreId",
	    p."CompleteStoreName" as storename,
	    p."FoodType",
	    p."AverageRating",
	    p."City",
	    COALESCE(revp.customer_count, 0) AS TotalCustomer,
	    revp.multiple_reviews_reviewers as TotalReturningCustomer,
	    COALESCE(revp.review_count, 0) AS TotalReview
	FROM restaurant_puchong p
	LEFT JOIN (
	    SELECT 
	        rp."StoreId" as storeid,
	        COUNT(DISTINCT rp."reviewerId") AS customer_count,
	        COUNT(DISTINCT uuid) AS review_count,
	        COUNT(DISTINCT CASE WHEN sub_rp.review_count > 1 THEN sub_rp."reviewerId" END) AS multiple_reviews_reviewers
	    FROM reviews_puchong rp
	    LEFT JOIN (
	        SELECT "StoreId", "reviewerId", COUNT(*) as review_count
	        FROM reviews_puchong
	        GROUP BY "StoreId", "reviewerId"
	    ) sub_rp ON rp."StoreId" = sub_rp."StoreId" AND rp."reviewerId" = sub_rp."reviewerId"
	    GROUP BY rp."StoreId"
	) revp ON p."StoreId" = revp.storeid ),
putrajaya as 
	(SELECT 
	    ptj."StoreId",
	    ptj."CompleteStoreName" as storename,
	    ptj."FoodType",
	    ptj."AverageRating",
	    ptj."City",
	    COALESCE(revptj.customer_count, 0) AS TotalCustomer,
	    revptj.multiple_reviews_reviewers as TotalReturningCustomer,
	    COALESCE(revptj.review_count, 0) AS TotalReview
	FROM restaurant_putrajaya ptj
	LEFT JOIN (
	    SELECT 
	        rptj."StoreId" as storeid,
	        COUNT(DISTINCT rptj."reviewerId") AS customer_count,
	        COUNT(DISTINCT uuid) AS review_count,
	        COUNT(DISTINCT CASE WHEN sub_rptj.review_count > 1 THEN sub_rptj."reviewerId" END) AS multiple_reviews_reviewers
	    FROM reviews_putrajaya rptj
	    LEFT JOIN (
	        SELECT "StoreId", "reviewerId", COUNT(*) as review_count
	        FROM reviews_putrajaya
	        GROUP BY "StoreId", "reviewerId"
	    ) sub_rptj ON rptj."StoreId" = sub_rptj."StoreId" AND rptj."reviewerId" = sub_rptj."reviewerId"
	    GROUP BY rptj."StoreId"
	) revptj ON ptj."StoreId" = revptj.storeid ),
shahalam as 
	(SELECT 
	    sa."StoreId",
	    sa."CompleteStoreName" as storename,
	    sa."FoodType",
	    sa."AverageRating",
	    sa."City",
	    COALESCE(revsa.customer_count, 0) AS TotalCustomer,
	    revsa.multiple_reviews_reviewers as TotalReturningCustomer,
	    COALESCE(revsa.review_count, 0) AS TotalReview
	FROM restaurant_shah_alam sa
	LEFT JOIN (
	    SELECT 
	        rsa."StoreId" as storeid,
	        COUNT(DISTINCT rsa."reviewerId") AS customer_count,
	        COUNT(DISTINCT uuid) AS review_count,
	        COUNT(DISTINCT CASE WHEN sub_rsa.review_count > 1 THEN sub_rsa."reviewerId" END) AS multiple_reviews_reviewers
	    FROM reviews_shah_alam rsa
	    LEFT JOIN (
	        SELECT "StoreId", "reviewerId", COUNT(*) as review_count
	        FROM reviews_shah_alam
	        GROUP BY "StoreId", "reviewerId"
	    ) sub_rsa ON rsa."StoreId" = sub_rsa."StoreId" AND rsa."reviewerId" = sub_rsa."reviewerId"
	    GROUP BY rsa."StoreId"
	) revsa ON sa."StoreId" = revsa.storeid )
select * from cyber
union all select * from kajang
union all select * from klang
union all select * from kl
union all select * from petalingjaya
union all select * from puchong
union all select * from putrajaya
union all select * from shahalam;