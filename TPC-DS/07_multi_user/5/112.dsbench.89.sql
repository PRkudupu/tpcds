set role dsbench;
:EXPLAIN_ANALYZE
-- start query 12 in stream 4 using template query89.tpl and seed 1602933843
select  *
from(
select i_category, i_class, i_brand,
       s_store_name, s_company_name,
       d_moy,
       sum(ss_sales_price) sum_sales,
       avg(sum(ss_sales_price)) over
         (partition by i_category, i_brand, s_store_name, s_company_name)
         avg_monthly_sales
from item, store_sales, date_dim, store
where ss_item_sk = i_item_sk and
      ss_sold_date_sk = d_date_sk and
      ss_store_sk = s_store_sk and
      d_year in (2001) and
        ((i_category in ('Shoes','Children','Music') and
          i_class in ('kids','infants','classical')
         )
      or (i_category in ('Books','Women','Electronics') and
          i_class in ('travel','dresses','dvd/vcr players') 
        ))
group by i_category, i_class, i_brand,
         s_store_name, s_company_name, d_moy) tmp1
where case when (avg_monthly_sales <> 0) then (abs(sum_sales - avg_monthly_sales) / avg_monthly_sales) else null end > 0.1
order by sum_sales - avg_monthly_sales, s_store_name
limit 100;

-- end query 12 in stream 4 using template query89.tpl
