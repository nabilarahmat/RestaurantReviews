/*Join all reviews table by area into 1 reviews view*/
CREATE VIEW view_Reviews AS
with cyber as (
	SELECT 
	    r."reviewerId",
	    r."StoreId",
	    r."uuid" as uniqueId,
	    r."createdAt",
	    r."updatedAt",
	    r."restaurant_food" as restaurantReview,
	    r."rider" as riderReview,
	    r."overall" as overallReview
	FROM reviews_cyberjaya r
	),
kajang as (
	SELECT 
	    k."reviewerId",
	    k."StoreId",
	    k."uuid" as uniqueId,
	    k."createdAt",
	    k."updatedAt",
	    k."restaurant_food" as restaurantReview,
	    k."rider" as riderReview,
	    k."overall" as overallReview
	FROM reviews_kajang k
	) ,
klang as (
	SELECT 
	    klg."reviewerId",
	    klg."StoreId",
	    klg."uuid" as uniqueId,
	    klg."createdAt",
	    klg."updatedAt",
	    klg."restaurant_food" as restaurantReview,
	    klg."rider" as riderReview,
	    klg."overall" as overallReview
	FROM reviews_klang klg
	) ,
kl as (
	SELECT 
	    kl."reviewerId",
	    kl."StoreId",
	    kl."uuid" as uniqueId,
	    kl."createdAt",
	    kl."updatedAt",
	    kl."restaurant_food" as restaurantReview,
	    kl."rider" as riderReview,
	    kl."overall" as overallReview
	FROM reviews_kl kl
	) ,
petalingjaya as (
	SELECT 
	    pj."reviewerId",
	    pj."StoreId",
	    pj."uuid" as uniqueId,
	    pj."createdAt",
	    pj."updatedAt",
	    pj."restaurant_food" as restaurantReview,
	    pj."rider" as riderReview,
	    pj."overall" as overallReview
	FROM reviews_petaling_jaya pj ),
puchong as (
	SELECT 
	    p."reviewerId",
	    p."StoreId",
	    p."uuid" as uniqueId,
	    p."createdAt",
	    p."updatedAt",
	    p."restaurant_food" as restaurantReview,
	    p."rider" as riderReview,
	    p."overall" as overallReview
	FROM reviews_puchong p ),
putrajaya as (
	SELECT 
	    ptj."reviewerId",
	    ptj."StoreId",
	    ptj."uuid" as uniqueId,
	    ptj."createdAt",
	    ptj."updatedAt",
	    ptj."restaurant_food" as restaurantReview,
	    ptj."rider" as riderReview,
	    ptj."overall" as overallReview
	FROM reviews_putrajaya ptj ),
shahalam as (
	SELECT 
	    sa."reviewerId",
	    sa."StoreId",
	    sa."uuid" as uniqueId,
	    sa."createdAt",
	    sa."updatedAt",
	    sa."restaurant_food" as restaurantReview,
	    sa."rider" as riderReview,
	    sa."overall" as overallReview
	FROM reviews_shah_alam sa )
select * from cyber
union all select * from kajang
union all select * from klang
union all select * from kl
union all select * from petalingjaya
union all select * from puchong
union all select * from putrajaya
union all select * from shahalam;