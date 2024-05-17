-- write your queries here

-- Question 1:
SELECT * FROM owners                                                   
JOIN vehicles ON vehicles.owner_id = owners.id;

-- Question 2: 
SELECT o.first_name, o.last_name, COUNT(c.id) AS count
FROM owners o
JOIN vehicles c ON o.id = c.owner_id
GROUP BY o.first_name, o.last_name
ORDER BY o.first_name ASC;

-- Question 3: 
SELECT o.first_name, o.last_name, 
CAST(AVG(v.price) AS INTEGER) AS averager_price, 
COUNT(v.id) AS count
FROM owners o
JOIN vehicles v ON o.id = v.owner_id
GROUP BY o.first_name, o.last_name
HAVING COUNT(v.id) > 1 AND AVG(v.price) > 10000
ORDER BY o.first_name DESC;