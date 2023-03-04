-- Задание 1: Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке. [ORDER BY]
USE vk;
SELECT DISTINCT firstname 
FROM users
order by firstname;

-- Задание 2: Выведите количество мужчин старше 35 лет [COUNT]
SELECT COUNT(*)
-- TIMESTAMPDIFF(YEAR, birthday, NOW()) AS age
FROM profiles
WHERE gender='m' AND (TIMESTAMPDIFF(YEAR, birthday, NOW())) > 35;

-- Задание 3: Сколько заявок в друзья в каждом статусе? (таблица friend_requests) [GROUP BY]
SELECT COUNT(*), status
FROM friend_requests 
GROUP BY status

-- Задание 4: Выведите номер пользователя, который отправил больше всех заявок в друзья (таблица friend_requests) [LIMIT]
SELECT COUNT(*) AS maxinit
FROM friend_requests 
GROUP BY initiator_user_id 
ORDER BY maxinit DESC
LIMIT 1;

