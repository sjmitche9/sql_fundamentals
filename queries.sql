SELECT *
FROM product
JOIN product_category
ON product.category_id = product_category.category_id;