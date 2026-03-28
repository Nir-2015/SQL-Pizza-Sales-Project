-- determine the top 3 most orderd pizza based on revenue
SELECT 
	pizza_types.name,
    sum(order_details.quantity*pizzas.price) AS revenue
FROM pizza_types
	JOIN pizzas
		ON pizza_types.pizza_type_id = pizzas.pizza_type_id
	JOIN order_details
		ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizza_types.name
ORDER BY revenue DESC
LIMIT 3;
