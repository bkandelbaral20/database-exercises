USE codeup_test_db;
-- 2.Write SELECT statements to output each of the following with a caption:
-- a.All albums in your table.
SELECT *  FROM albums;
-- b.All albums released before 1980
SELECT *  FROM albums WHERE release_date < 1980;
-- c.All albums by Michael Jackson
SELECT *  FROM albums WHERE artist = 'Michael Jackson';

-- 3.After each SELECT add an UPDATE statement to:
-- a. Make all the albums 10 times more popular (sales * 10)
UPDATE albums
SET sales  = sales  * 10;

-- b. Move all the albums before 1980 back to the 1800s.
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;

-- c. Change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';


-- 4.Add SELECT statements after each UPDATE so you can see the results of your handiwork.
