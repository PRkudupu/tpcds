set role dsbench;
:EXPLAIN_ANALYZE
-- start query 2 in stream 2 using template query98.tpl and seed 1401457723
select i_item_id
      ,i_item_desc 
      ,i_category 
      ,i_class 
      ,i_current_price
      ,sum(ss_ext_sales_price) as itemrevenue 
      ,sum(ss_ext_sales_price)*100/sum(sum(ss_ext_sales_price)) over
          (partition by i_class) as revenueratio
from	
	store_sales
    	,item 
    	,date_dim
where 
	ss_item_sk = i_item_sk 
  	and i_category in ('Sports', 'Men', 'Books')
  	and ss_sold_date_sk = d_date_sk
	and d_date between cast('2001-03-10' as date) 
				and (cast('2001-03-10' as date) + '30 days'::interval)
group by 
	i_item_id
        ,i_item_desc 
        ,i_category
        ,i_class
        ,i_current_price
order by 
	i_category
        ,i_class
        ,i_item_id
        ,i_item_desc
        ,revenueratio;

-- end query 2 in stream 2 using template query98.tpl