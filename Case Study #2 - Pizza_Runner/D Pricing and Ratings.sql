

----------------D. Pricing and Ratings------------------

--1. If a Meat Lovers pizza costs $12 and Vegetarian costs $10 
--and there were no charges for changes - how much money has Pizza Runner made so far if there are no delivery fees?--
SELECT 
			pizza_name,
	SUM(CASE
			WHEN c.pizza_id = 1 THEN 12
			ELSE 0
			END) AS total_profit_meatlover,
	SUM(CASE
			WHEN c.pizza_id = 2 THEN 10
			ELSE 0
			END) AS total_profit_vege

FROM 
		cleaned_customer_orders c,
		cleaned_runner_orders r,
		pizza_names p

WHERE r.cancellation IS NULL
			AND 
		c.pizza_id= p.pizza_id

GROUP BY pizza_name






--2. What if there was an additional $1 charge for any pizza extras? Add cheese is $1 extra--



--3. The Pizza Runner team now wants to add an additional ratings system that allows customers to rate their runner,
--how would you design an additional table for this new dataset -
--generate a schema for this new table and insert your own data for ratings for each successful customer order between 1 to 5.--


--4. Using your newly generated table - can you join all of the information together
--to form a table which has the following information for successful deliveries?--


--5. If a Meat Lovers pizza was $12 and Vegetarian $10 fixed prices with no cost for extras and each runner 
--is paid $0.30 per kilometre traveled - how much money does Pizza Runner have left over after these deliveries?--