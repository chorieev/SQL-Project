--1.
select top 3 fullname, Balance from Customers c
join Accounts a on c.CustomerID = a.CustomerID
order by Balance desc

--2.
select c.CustomerID from Customers c
join Loans l on c.CustomerID = l.CustomerID and l.Status = 'Active'
group by c.CustomerID
having COUNT(l.Status) > 1


--3.
select t.TransactionID from Transactions t
join FraudDetection f on t.TransactionID = f.TransactionID and f.RiskLevel = 'Fraudulent'


--4.
select BranchName, SUM(Amount) total_amount from Loans l
join Accounts a on l.CustomerID = a.CustomerID
join Branches b on a.BranchID = b.BranchID
group by BranchName

--5.
select a.CustomerID from Accounts a
join Transactions t on a.AccountID = t.AccountID and t.Amount>10000
group by a.CustomerID
having COUNT(t.TransactionID) > 1


--6.
select * from Accounts a
join Transactions t on a.AccountID = t.AccountID