-- Users sign up for the site with an email and password
-- Users create ads with a title and description and category.
-- Each ad is associated with the user that created it.
-- An ad can be in one or more categories (for example, "help wanted", "giveaway", or "furniture")

Create TABLE user(
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

CREATE table category(
 id INT UNSIGNED NOT NULL AUTO_INCREMENT,
 categories varchar(200) NOT NULL,
 primary key(id)
);

-- Write SQL queries to answer the following questions:**********************

-- For a given ad, what is the email address of the user that created it?
SELECT email
FROM user
-- For a given ad, what category, or categories, does it belong to?
-- For a given category, show all the ads that are in that category.
-- For a given user, show all the ads they have posted.