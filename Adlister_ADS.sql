-- Users sign up for the site with an email and password
-- Users create ads with a title and description and category.
-- Each ad is associated with the user that created it.
-- An ad can be in one or more categories (for example, "help wanted", "giveaway", or "furniture")

USE codeup_test_db;

Create TABLE users(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
email varchar(50) NOT NUll,
password varchar(20) NOt NULL,
primary key (id)
);

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id)
);
CREATE table categories(
 id INT UNSIGNED NOT NULL AUTO_INCREMENT,
 description varchar(200) NOT NULL,
 primary key(id)
);

CREATE TABLE ads_users(
ads_id INT UNSIGNED NOT NULL,
    users_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (ads_id) REFERENCES ads(id),
    FOREIGN KEY (users_id) REFERENCES users(id)
);

CREATE TABLE ads_categories(
ads_id INT UNSIGNED NOT NULL,
    categories_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (ads_id) REFERENCES ads(id),
    FOREIGN KEY (categories_id) REFERENCES categories(id)
);

-- Write SQL queries to answer the following questions:**********************

-- For a given ad, what is the email address of the user that created it?
SELECT email
FROM user
-- For a given ad, what category, or categories, does it belong to?
-- For a given category, show all the ads that are in that category.
-- For a given user, show all the ads they have posted.