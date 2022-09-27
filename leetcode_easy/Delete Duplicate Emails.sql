DELETE p2
FROM person p1
CROSS JOIN person p2
WHERE p2.id>p1.id AND
    p2.email=p1.email;