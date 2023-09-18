SELECT c.firstname, c.lastname, at.type AS account_type_name
FROM "Customer" c
JOIN "Account" a ON c.id = a.customer_id
JOIN "AccountType" at ON a.account_type_id = at.id;
