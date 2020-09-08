
-- 2.Write SELECT statements to output each of the following with a caption:
-- a.All albums in your table.
SELECT name FROM albums;
-- b.All albums released before 1980
SELECT * name FROM albums WHERE release_date = 1980;
-- c.All albums by Michael Jackson
SELECT * name  FROM albums WHERE artist = 'Michael Jackson';

-- 3.After each SELECT add an UPDATE statement to:
-- a. Make all the albums 10 times more popular (sales * 10)
UPDATE albums
SET * sales certification = sales certification * 10;

-- b. Move all the albums before 1980 back to the 1800s.

-- c. Change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums
SET artist = 'Michael Jackson', artist = 'Peter Jackson';

-- 4.Add SELECT statements after each UPDATE so you can see the results of your handiwork.
