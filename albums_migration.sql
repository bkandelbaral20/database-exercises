USE codeup_test_db;
DROP TABLE if EXISTS albums;
CREATE TABLE albums(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'NONE',
    name VARCHAR(100) NOT NULL,
    release_date INT DATE NOT NULL ,
    sales FLOAT
    content TEXT NOT NULL,
    PRIMARY KEY (id)
)
