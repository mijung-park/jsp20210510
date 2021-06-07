SELECT * FROM Likes;

-- left join + rihgt join = full join (outer join)
SELECT * FROM Users u LEFT JOIN Likes l On u.id = l.userId
UNION
SELECT * FROM Users u RIGHT JOIN Likes l ON u.id = l.userId;

UPDATE Likes
SET `like`= 'Apple'
Where userId = 4;