USE codeup_test_db;
-- 1. The name of all albums by Pink Floyd.
SELECT *  FROM albums WHERE artist = 'Pink Floyd';

-- 2. The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date FROM albums WHERE artist = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- 3. The genre for Nevermind
SELECT genre FROM albums WHERE name ='Nevermind';

-- 4. Which albums were released in the 1990s
SELECT name  FROM albums WHERE release_date = 1990 ;

-- 5. Which albums had less than 20 million certified sales
SELECT * FROM albums WHERE sales certification > 20 ;

-- 6. All the albums with a genre of "Rock". Why do these query results not include albums with a
--     genre of "Hard rock" or "Progressive rock"?
SELECT * FROM albums where genre = "Rock";