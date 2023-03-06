use vk;
-- Задание 1. Подсчитать количество групп, в которые вступил каждый пользователь
SELECT firstname, lastname, COUNT(*)
FROM users
INNER JOIN users_communities ON users.id = users_communities.user_id
GROUP BY users.id
ORDER BY COUNT(*) DESC;

-- Задание 2. Подсчитать количество пользователей в каждом сообществе
SELECT name, COUNT(*)
FROM communities
INNER JOIN users_communities ON communities.id = users_communities.community_id
GROUP BY users_communities.community_id;

-- Задание 3. Пусть задан некоторый пользователь. Из всех пользователей соц. сети найдите человека, который больше всех общался с выбранным пользователем (написал ему сообщений)
SELECT firstname, lastname, count(*)
FROM messages
JOIN users on users.id = messages.from_user_id
WHERE to_user_id = 1
GROUP BY from_user_id
ORDER BY count(*) DESC
LIMIT 1;