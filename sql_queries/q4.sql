-- identify the most common size pizza ordered
SELECT
	pizzas.size,
    count(order_details.order_details_id) AS order_count
FROM pizzas
	JOIN order_details
    ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC