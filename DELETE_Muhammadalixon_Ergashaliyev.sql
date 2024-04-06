-- Remove a previously inserted film from the inventory and all corresponding rental records
DELETE FROM "rental"
USING "inventory"
JOIN "film" ON "inventory"."film_id" = "film"."film_id"
WHERE "rental"."inventory_id" = "inventory"."inventory_id"
AND "film"."title" = 'Meg';


DELETE FROM "inventory"
USING "film"
WHERE "inventory"."film_id" = "film"."film_id"
AND "film"."title" = 'Meg';

-- Remove any records related to you (as a customer) from all tables except "Customer" and "Inventory"

DELETE FROM "payment"
USING "customer"
WHERE "payment"."customer_id" = "customer"."customer_id"
AND "customer"."first_name" = 'Muhammadalixon';


DELETE FROM "rental"
USING "customer"
WHERE "rental"."customer_id" = "customer"."customer_id"
AND "customer"."first_name" = 'Muhammadalixon';