-- group the orders by date and calculate the average number of pizzas ordered per day

SELECT ROUND(AVG(total),0) AS avg_pizza_ordered_per_day
FROM 
(SELECT 
	orders.order_date,
    sum(order_details.quantity) AS total
FROM orders
JOIN order_details
	ON orders.order_id = order_details.order_id
GROUP BY orders.order_date) AS total_one
