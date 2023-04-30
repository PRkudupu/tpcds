set role dsbench;
:EXPLAIN_ANALYZE
-- start query 53 in stream 4 using template query37.tpl and seed 1505869332
select  i_item_id
       ,i_item_desc
       ,i_current_price
 from item, inventory, date_dim, catalog_sales
 where i_current_price between 60 and 60 + 30
 and inv_item_sk = i_item_sk
 and d_date_sk=inv_date_sk
 and d_date between cast('1999-01-06' as date) and (cast('1999-01-06' as date) +  '60 days'::interval)
 and i_manufact_id in (756,846,757,787)
 and inv_quantity_on_hand between 100 and 500
 and cs_item_sk = i_item_sk
 group by i_item_id,i_item_desc,i_current_price
 order by i_item_id
 limit 100;

-- end query 53 in stream 4 using template query37.tpl
