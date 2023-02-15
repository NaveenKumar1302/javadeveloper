select frst_name,lst_name,count(custmr.custmr_id) as no_of_orders from custmr join ordr on ordr.custmr_id = custmr.custmr_id
group by custmr.custmr_id order by no_of_orders;

select  frst_name,lst_name,sum(ordr.ordr_amnt) as total_amount from ordr join custmr on ordr.custmr_id = custmr.custmr_id
group by frst_name,lst_name order by total_amount;

select custmr_id ,sum(ordr.ordr_amnt) as total_amount from ordr group by custmr_id order by total_amount;

select frst_name,lst_name,email, round (avg(ordr.ordr_amnt),2) as avg_price from ordr join custmr 
on ordr.custmr_id = custmr.custmr_id group by custmr.custmr_id order by avg_price;
 
 select frst_name,lst_name,min(ordr.ordr_amnt) from ordr join custmr on  ordr.custmr_id = custmr.custmr_id 
 group by custmr.custmr_id ;

 select frst_name,lst_name,min(ordr.ordr_amnt)as min_amnt,
 max(ordr.ordr_amnt) as max_amnt,
  round (avg(ordr.ordr_amnt),2) as avg_price 
  from ordr join custmr on  ordr.custmr_id = custmr.custmr_id 
 group by custmr.custmr_id ;