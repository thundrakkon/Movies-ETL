-- Query checks
SELECT * FROM stream;
SELECT * FROM imdb;

frame = pd.merge(metadata, stream_transformed, left_on = 'title', right_on='title', how = 'inner')

-- Join tables on title
SELECT 
s.title,
i.budget,
i.revenue,
s.netflix,
s.hulu,
s.prime_video,
s.disney,
i.revenue-i.budget AS profit
FROM stream AS s
INNER JOIN imdb AS i
ON s.title = i.title;

-- Check where Netflix has the movie
SELECT
s.title,
i.budget,
i.revenue,
s.netflix,
s.hulu,
s.prime_video,
s.disney,
i.revenue-i.budget AS profit
FROM stream AS s
INNER JOIN imdb AS i
ON s.title = i.title
WHERE s.netflix = 1;