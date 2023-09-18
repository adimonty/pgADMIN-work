SELECT A.artist_name, COUNT(M.id) AS total_media
FROM "Media" M
JOIN "Artist" A ON M.artist_id = A.id
WHERE UPPER(A.artist_name) = 'KISS'
GROUP BY A.artist_name;
