-- Drop table in case of an error creating table
DROP TABLE stream;
DROP TABLE imdb;

-- Create Two Tables
CREATE TABLE stream (
	id INT PRIMARY KEY,
	title TEXT,
	year INT,
	age TEXT,
	imdb FLOAT,
	rotten_tomatoes VARCHAR,
	netflix INT,
	hulu INT,
	prime_video INT,
	disney INT,
	type INT,
	directors TEXT,
	genres TEXT,
	country TEXT,
	language TEXT,
	runtime FLOAT
);

CREATE TABLE imdb (
	id INT PRIMARY KEY,
	imdb_id VARCHAR,
	original_title TEXT,
	title TEXT,
	runtime FLOAT,
	budget INT,
	revenue FLOAT,
	popularity FLOAT,
	vote_average FLOAT,
	vote_count FLOAT
);