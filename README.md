# SampleDb
Sample Db for Database Development with SQL Server Data Tools

CASE:
Create a Local DB and Deploy for Sales Team on Azure 
Sales team now requires a well defined ranking column for their upcoming customer rewards.
This means orginal data on azure DB needs to be updated with nrew ranking definitions.
Ranking of customers should be periodically updated.

Solution:
1. Create and Deploy Sales DB and DB solution
2. Create a Snapshot of Orignal DB before updating 
3. Remove CustomerRanking Columning from Custormer Table
4. Create a CoustomerRanking Table
5. Add CustomerRanking foreign key column to customer
6. Create foreign key constraint between Customer and CustomerRanking
7. Update vwCustomerOrderSummary to join againts CustomerRanking
8. Create stored procedure to update customer rankings
9. Deploy to the cloud.
