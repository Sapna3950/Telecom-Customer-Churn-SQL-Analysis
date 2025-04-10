# Telecom-Customer-Churn-SQL-Analysis
A beginner-friendly SQL project exploring customer churn in telecom industry with insights and fun storytelling.
# 📞 Telecom Customer Churn Analysis — SQL + AI 🚀

Welcome to my **Telecom Churn Analysis** project!  
This is not just any SQL project – it’s a data storytelling journey 🎢 where we uncover **why customers leave**, what patterns exist, and how we can use **AI to predict churn** in the future 💡

## 🧠 Project Goals

📊 Perform in-depth customer churn analysis using SQL
🤖 Integrate AI/ML to predict churn behavior
💬 Build a fun AI chatbot to simulate customer retention assistant
🧠 Use Natural Language AI to translate English to SQL queries
🔍 Tell an engaging, visual, and insightful story from raw data

## 📁 Project Structure
## 🧾 Dataset Used

**File**: `telecom_customer_churn.csv`
Contains details about customer demographics, services used, contract type, billing, and churn label.
Size: 7,000+ customer records

## 🔍 Step 1: SQL-Based Churn Analysis (The Star Part!)

Using powerful SQL queries, I explored:

📈 **How many customers churned vs stayed**
🧓 Gender, age group, and their churn behavior
📅 Tenure analysis: New vs Mid vs Long-term customers
💸 Impact of contract types and monthly charges
🏦 Payment methods and their correlation with churn
🔥 Interesting patterns like high-spending churners

### 🔧 Some Highlight Queries:
## How many customers churned?
SELECT COUNT(*) FROM telecom WHERE Churn = 'Yes';

## Average monthly charges by churn status
SELECT Churn, AVG(MonthlyCharges) FROM telecom GROUP BY Churn;

## Churn by Contract Type
SELECT Contract, COUNT(*) FROM telecom WHERE Churn = 'Yes' GROUP BY Contract;

## Churn by Tenure Buckets
SELECT 
  CASE 
    WHEN tenure < 12 THEN 'New'
    WHEN tenure BETWEEN 12 AND 36 THEN 'Mid-Term'
    ELSE 'Long-Term'
  END AS TenureCategory,
  COUNT(*)
FROM telecom
WHERE Churn = 'Yes'
GROUP BY TenureCategory;
## ✨ I then visualized and interpreted the insights to understand who is most likely to churn and why.

🔥 New customers are churning the most!

💳 Bank Withdrawal has the highest churn rate

📅 Month-to-month contracts are a big red flag

🎯 Targeting senior citizens with flexible contracts could help retention

## 💼 What I Learned
🧠 How to use SQL to extract real-world business insights
🧩 Storytelling through data exploration
🤖 How AI can support customer retention strategies
🛠 Turning raw data into a real product.

## 🙋‍♀️ About Me
Hi, I’m Sapna!
I'm learning Data Analytics and sharing my journey with fun, real-world projects like this 💙
Let’s connect on LinkedIn and learn together! 😄

## Would you like me to generate this as a downloadable file for you too? Or want a customized GitHub banner with your name + project? 🎨  
## Let me know — we’re building your perfect portfolio together! 💪📁




