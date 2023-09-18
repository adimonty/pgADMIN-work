SELECT M.title, M.genre, A.artist_name
FROM "Media" M
JOIN "Artist" A ON M.artist_id = A.id;
