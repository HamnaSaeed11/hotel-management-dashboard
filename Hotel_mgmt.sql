with hotel as (
SELECT  * from hotel_revenue_historical
union
SELECT * from hotel_revenue_historical_19
union
SELECT * from hotel_revenue_historical_20
                   )

select
arrival_date_year,
hotel,
round(sum((stays_in_week_nights+stays_in_weekend_nights)* adr),2) as revenue
from hotel
group by arrival_date_year,hotel;
