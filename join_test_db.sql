use join_test_db;

# INSERT INTO roles (name) VALUES ('author');
INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null);

SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles on users.role_id = role_id ;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;

SELECT roles.name AS role_name, COUNT(*)
from users
         join roles ON users.role_id = roles.id
GROUP BY roles.name;
