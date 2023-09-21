SELECT
    CASE
        WHEN is_music = true THEN 'music'
        WHEN is_podcast = true THEN 'podcast'
        ELSE 'unknown'
    END AS media_type,
    AVG(duration) AS average_duration
FROM "media"
GROUP BY media_type;
