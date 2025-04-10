create database Telecom_Churn;
use Telecom_Churn;
/* How Many Customers Have Churned vs. Stayed?*/
select customer_status, count(*) as customer_count from churn 
where Customer_Status In ("Churned","Stayed")
group by customer_status; 

select Customer_Status,avg(Avg_Monthly_Long_Distance_Charges) as AvgMonthlyCharges,
max(Avg_Monthly_Long_Distance_Charges) as MaxMonthlyCharges,
min(Avg_Monthly_Long_Distance_Charges) as MinMonthlyCharges 
from churn
where Customer_Status in ("Churned","Stayed")
group by Customer_Status;


SELECT Gender, Customer_Status, COUNT(*) AS Count
FROM churn
WHERE Customer_Status IN ('Churned')  -- Exclude 'Joined'
GROUP BY Gender, Customer_Status
ORDER BY Gender, Customer_Status;

select case 
when age>=60 then 1
else 0
end as Senior_citizen , Customer_Status as churn,
count(*) as Count
from churn
where Customer_Status In ("Churned")
group by Senior_citizen, churn
order by Senior_citizen, churn;

select case 
when age>=60 then 1
else 0
end as Senior_citizen , Customer_Status as churn,
count(*) as Count
from churn
where Customer_Status In ("Churned")
group by Senior_citizen, churn
order by Senior_citizen, churn;

select contract,customer_status, count(*)as count
from churn 
where customer_status in ("Churned")
group by contract, customer_status
order by contract, customer_status;

select 
case 
when Tenure_in_Months < 12 then "New Customer"
when Tenure_in_Months between 12 and 36 then "Mid-term-customer"
else "Long-Term-Customer"
end as CustomerCategory,
count(*) as customerCount, Customer_status
from churn
where Customer_Status in ("Churned")
group by CustomerCategory,Customer_status
order by CustomerCategory,Customer_status;

select Customer_Id, Monthly_Charge,Tenure_in_Months,Customer_Status
from churn
where Customer_Status = "Churned" and Monthly_Charge>(Select Avg(Monthly_Charge) from churn);

SELECT Customer_Status, COUNT(*) AS Churned_High_Paying_Customers
FROM churn
WHERE Customer_Status in ("churned","stayed")
AND Monthly_Charge > (SELECT AVG(Monthly_Charge) FROM churn)
group by Customer_Status;

select Customer_ID, Tenure_in_Months,Monthly_Charge, Contract
From Churn
where Tenure_in_Months<12 And Monthly_Charge>(select(Avg(Monthly_Charge) and contract ="Month-to-Month"));

select  Customer_Status ,Count(Customer_Status) 
From Churn
where Tenure_in_Months<12 And Monthly_Charge>(select(Avg(Monthly_Charge) and contract ="Month-to-Month")) group by Customer_Status;



Select 
case 
when Tenure_in_Months <12 Then "new Customer (<12 months)"
when Tenure_in_Months between 12 and 36 then "mid term customer(12-36 months)"
else "long- term customers (>36 months)"
End as Customer_category,
count(*) as total_customers,
sum(case when Customer_Status = "Churned" then 1 Else 0 end) as Churned_customers,
round((sum(case when Customer_Status = "Churned" then 1 Else 0 end)*100.0)/Count(*),2) as Churn_percentage
from churn
group by Customer_category;

select Customer_Id,Tenure_in_Months,Monthly_Charge,Total_Charges
from churn
where Customer_Status= "churned"
order by Total_Charges desc
limit 10;

select
Internet_Service,count(*) as total_customers,
sum(case when Customer_Status = "Churned" then 1 else 0 end) as Churned_Customers,
round((sum(case when Customer_Status = "Churned" then 1 else 0 end)*100)/ count(*),2) as churn_rate_percentage
from churn
group by Internet_Service;

select 
Payment_Method, count(*) as Total_customers,
sum(case when Customer_Status= "Churned" then 1 else 0 end) as Churned_customers,
Round((sum(case when Customer_Status= "Churned" then 1 else 0 end)* 100)/count(*),2) as churn_rate_percentage
from churn
group by Payment_Method;
select Customer_ID, Tenure_in_Months,Monthly_Charge, Contract,Payment_Method
from churn
where Tenure_in_Months<12 and Contract= "Month-to-Month" and Payment_Method="Bank Withdrawal"
order by Monthly_Charge Desc;










