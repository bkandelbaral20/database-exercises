USE codeup_test_db;
-- Use INSERT to add records for all the albums from this list on Wikipedia that claim over 30 million sales
-- (the first two tables). For sales data, use the 'sales certification' column of the tables, not 'claimed sales'.
-- For artists listed with 'Various Artists', just use the primary artist's name.
-- First write your queries as separate INSERT statements for each record and test. You should see no output.
-- Refactor your script to use a single INSERT statement for all the records and test it again. Again, this should not
-- generate any output.
TRUNCATE albums;

INSERT INTO albums (artist, name, release_date, genre,sales)
VALUES
       ('Michael Jackson', 'Thriller', 1982, 'Pop, post-disco, funk, rock', 66),
        ('AC/DC','Back in Black', 1980, 'Hard rock ', 50),
        ('Meat Loaf','Bat out of hell', 1977, 'Hard rock, glam rock, progressive rock', 50),
        ('Pink Floyd','The Dark Side of the Moon ', 1973, 'Progressive rock', 45),
        ('Whitney Houston / Various artists	','The Bodyguard', 1992, 'R&B, soul, pop, soundtrack ', 45),
        ('Eagles','Their Greatest Hits (1971–1975)	', 1976, 'Country rock, soft rock, folk rock ', 42),
        ('Bee Gees / Various artists ','Saturday Night Fever ', 1977, 'Disco ', 40),
        ('Fleetwood Mac	','Rumours ', 1977, 'Soft rock', 40),
        ('Shania Twain	','Come On Over	', 1997, 'Country pop', 40),
         ('various artist','Grease: The Original Soundtrack from the Motion Picture	', 1978, 'Rock and roll
 ', 38),
        ('Led Zeppelin	','Led Zeppelin IV	' ,1971 , 'Hard rock, heavy metal, folk rock
          ',35 ),
          ('Michael Jackson	','Bad', 1987, 'Pop, rhythm and blues, funk and rock
	 ', 35),
          ('Alanis Morissette	','Jagged Little Pill	',1995	, 'Alternative rock
', 33),
          ('Michael Jackson	','Dangerous', 1991	, 'New jack swing, R&B and pop
', 32),
          ('Celine Dion	','Falling into You	', 1996	, 'Pop, soft rock
', 32),
          ('Eagles', 'Hotel California	', 1976, 'Soft rock ', 32),
          ('The Beatles	','Sgt. Pepper''s Lonely Hearts Club Band	', 1967, 'rock
 ', 32),
          ('Various artists	','Dirty Dancing ', 1987, 'Pop, rock, R&B
', 32),
          ('Adele	','21',2011, 'Pop, soul
 ', 31),
          ('Madonna','The Immaculate Collection	', 1990	, 'Pop, dance
 ', 31),
          ('Celine Dion	','Let''s Talk About Love	', 1997	, 'Pop, soft rock
', 31),
          ('The Beatles	','1',2000	, ' rock ', 31),
          ('ABBA	','Gold: Greatest Hits	', 1992	, 'Pop, disco ', 30),
          ('The Beatles	','Abbey Road	', 1969, 'Rock ', 30),
          ('Bruce Springsteen	','Born in the U.S.A.',1984, 'Heartland rock
 ', 30),
          ('Dire Straits	','Brothers in Arms	', 1985, 'Roots rock, blues rock, soft rock
 ', 30),
          ('James Horner	','Titanic: Music from the Motion Picture	', 1997, 'Film score
 ', 30),
          ('Metallica	','Metallica	',1991, 'Heavy metal
 ', 31),
          ('Nirvana	','Nevermind', 1991, 'Grunge, alternative rock
 ', 30),
          ('Pink Floyd	','The Wall	', 1979, 'Progressive rock
', 30),
          ('Santana	','Supernatural	', 1999, 'Latin rock
 ', 30),
          ('Guns N'' Roses	','Appetite for Destruction	', 1987, 'Hard rock ', 30) ;