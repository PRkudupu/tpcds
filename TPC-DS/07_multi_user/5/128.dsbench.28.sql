set role dsbench;
:EXPLAIN_ANALYZE
-- start query 28 in stream 4 using template query28.tpl and seed 1573298335
select  *
from (select avg(ss_list_price) B1_LP
            ,count(ss_list_price) B1_CNT
            ,count(distinct ss_list_price) B1_CNTD
      from store_sales
      where ss_quantity between 0 and 5
        and (ss_list_price between 136 and 136+10 
             or ss_coupon_amt between 2637 and 2637+1000
             or ss_wholesale_cost between 23 and 23+20)) B1,
     (select avg(ss_list_price) B2_LP
            ,count(ss_list_price) B2_CNT
            ,count(distinct ss_list_price) B2_CNTD
      from store_sales
      where ss_quantity between 6 and 10
        and (ss_list_price between 71 and 71+10
          or ss_coupon_amt between 7942 and 7942+1000
          or ss_wholesale_cost between 24 and 24+20)) B2,
     (select avg(ss_list_price) B3_LP
            ,count(ss_list_price) B3_CNT
            ,count(distinct ss_list_price) B3_CNTD
      from store_sales
      where ss_quantity between 11 and 15
        and (ss_list_price between 98 and 98+10
          or ss_coupon_amt between 2623 and 2623+1000
          or ss_wholesale_cost between 52 and 52+20)) B3,
     (select avg(ss_list_price) B4_LP
            ,count(ss_list_price) B4_CNT
            ,count(distinct ss_list_price) B4_CNTD
      from store_sales
      where ss_quantity between 16 and 20
        and (ss_list_price between 56 and 56+10
          or ss_coupon_amt between 4974 and 4974+1000
          or ss_wholesale_cost between 44 and 44+20)) B4,
     (select avg(ss_list_price) B5_LP
            ,count(ss_list_price) B5_CNT
            ,count(distinct ss_list_price) B5_CNTD
      from store_sales
      where ss_quantity between 21 and 25
        and (ss_list_price between 30 and 30+10
          or ss_coupon_amt between 8987 and 8987+1000
          or ss_wholesale_cost between 25 and 25+20)) B5,
     (select avg(ss_list_price) B6_LP
            ,count(ss_list_price) B6_CNT
            ,count(distinct ss_list_price) B6_CNTD
      from store_sales
      where ss_quantity between 26 and 30
        and (ss_list_price between 59 and 59+10
          or ss_coupon_amt between 1731 and 1731+1000
          or ss_wholesale_cost between 16 and 16+20)) B6
limit 100;

-- end query 28 in stream 4 using template query28.tpl
