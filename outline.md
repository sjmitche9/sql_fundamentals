# SQL Fundamentals

#### BASIC SELECT QUERY

- The SELECT statement is specifying the columns of the tables should be part of the output
- `*` all columns or specify each column names individually

`SELECT * FROM product;`

`SELECT name FROM product;`

`SELECT * from product_category;`

`SELECT id, name, from product_category;`

- The `WHERE` is filtering out the rows of the result set

```sql
SELECT *
FROM product
WHERE category_id = 3;
```

- Multiple conditions for `WHERE` statement combined with AND / OR

- We can use `ORDER BY` to sort the result set

```sql
SELECT *
FROM product
WHERE category_id = 3
ORDER BY price DESC;
```

- Aggregate functions

- We can use aggregate functions like `COUNT`, `SUM`, `AVG`, `MIN`,`MAX`

```sql
SELECT category_id, AVG(price)
FROM product
GROUP BY category_id;
```

- JOINS

- We use joins when we need the data of more than one table

- There are different types of joins

  - INNER JOIN
  - [LEFT || RIGHT] OUTER JOIN
  - Default join is INNER

```sql
SELECT *
FROM product
JOIN product_category
ON product.category_id = product_category.category_id;
```