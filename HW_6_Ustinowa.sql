 -- Задание 1. Написать функцию, которая удаляет всю информацию об указанном пользователе из БД vk. Пользователь задается по id. 
 -- Удалить нужно все сообщения, лайки, медиа записи, профиль и запись из таблицы users. Функция должна возвращать номер пользователя.
 DELIMITER // -- выставим разделитель
CREATE FUNCTION func_delete()
RETURNS bigint
  BEGIN
  DECLARE iduser bigint;
delete from users id where id = iduser;
delete from likes user_id where user_id = iduser;
delete from media user_id where user_id = iduser;
delete from profiles user_id where user_id = iduser;
delete from users_communities user_id where user_id = iduser;
delete from friend_requests initiator_user_id where initiator_user_id = iduser;
delete from friend_requests target_user_id where target_user_id = iduser;
RETURN iduser;
  END// --  не забываем наш новый разделитель
 DELIMITER ; -- вернем прежний разделитель

-- Вызов функции
SELECT func_delete(3);

-- Задание 2. Предыдущую задачу решить с помощью процедуры и обернуть используемые команды в транзакцию внутри процедуры.
START TRANSACTION
DELIMITER //

CREATE PROCEDURE function_delete(iduser BIGINT)
BEGIN
  DECLARE iduser BIGINT;
  
END//

DELIMITER ; 
delete from users id where id = iduser;
delete from likes user_id where user_id = iduser;
delete from media user_id where user_id = iduser;
delete from profiles user_id where user_id = iduser;
delete from users_communities user_id where user_id = iduser;
delete from friend_requests initiator_user_id where initiator_user_id = iduser;
delete from friend_requests target_user_id where target_user_id = iduser;
-- вызов процедуры
CALL function_delete(3);
COMMIT;