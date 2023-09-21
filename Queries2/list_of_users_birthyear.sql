SELECT EXTRACT(YEAR FROM birthdate) AS birth_year, firstname, lastname
FROM "customer"
ORDER BY birth_year, firstname, lastname;
