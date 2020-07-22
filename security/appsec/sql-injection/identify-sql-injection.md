---
author: lizTheDeveloper

type: normal

category: how to

links:
  - >-
    [Testing for SQL Injection (OTG-INPVAL-005)
    ](https://www.owasp.org/index.php/Testing_for_SQL_Injection_(OTG-INPVAL-005)){website}
  - >-
    [Testing for ORM Injection (OTG-INPVAL-007)
    ](https://www.owasp.org/index.php/Testing_for_ORM_Injection_(OTG-INPVAL-007)){website}

---

# Identify SQL Injection

---

## Content

Use this query (you may have to modify it to suit your data model) to test for basic SQL injection problems on any input:

```sql
SELECT * FROM Users
WHERE Username='1'
OR '1' = '1'
AND Password='1'
OR '1' = '1'
```

You can also look for any string concatenation within ORM statements:

```plain-text
Orders.find_all
"customer_id = 123 AND
order_date = '#{@params['order_date']}'"
```

---

## Practice

Modify the query to pass in SQL to get all users:

```sql
SELECT * 
FROM Users 
WHERE Username='???'
```

- 1' OR '1' = '1
- ;SELECT * FROM Users;
- --; SELECT * FROM Users;
- OR '1' = '1'

---

## Revision

Craft input such that you are returned all of the orders

```plain-text
Orders.find_all
"customer_id = 123 AND
order_date = '#{@params['order_date']}'"
```

Input: ???

- 12/12/2012' OR '1' = '1'
- OR '1' = '1'
- SELECT * FROM Orders
- ; SELECT * FROM Orders;
