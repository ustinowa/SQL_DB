-- Задание 1. Создайте представление с произвольным SELECT-запросом из прошлых уроков [CREATE VIEW]
CREATE VIEW vk_user AS
SELECT users.firstname, users.email, users.phone, communities.name
FROM users, users_communities, communities
WHERE users_communities.community_id = communities.id;

-- Задание 2. Выведите данные, используя написанное представление [SELECT]
SELECT * FROM vk_user;

-- Задание 3. Удалите представление [DROP VIEW]
DROP VIEW vk_user;

