SELECT FirstName, LastName, City, State
FROM person p
    LEFT JOIN address a
        ON p.PersonId=a.personId;