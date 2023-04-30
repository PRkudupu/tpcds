set role dsbench;
:EXPLAIN_ANALYZE
-- start query 80 in stream 0 using template query84.tpl and seed 1433545281
select  c_customer_id as customer_id
       ,c_last_name || ', ' || c_first_name as customername
 from customer
     ,customer_address
     ,customer_demographics
     ,household_demographics
     ,income_band
     ,store_returns
 where ca_city	        =  'Lebanon'
   and c_current_addr_sk = ca_address_sk
   and ib_lower_bound   >=  30060
   and ib_upper_bound   <=  30060 + 50000
   and ib_income_band_sk = hd_income_band_sk
   and cd_demo_sk = c_current_cdemo_sk
   and hd_demo_sk = c_current_hdemo_sk
   and sr_cdemo_sk = cd_demo_sk
 order by c_customer_id
 limit 100;

-- end query 80 in stream 0 using template query84.tpl
