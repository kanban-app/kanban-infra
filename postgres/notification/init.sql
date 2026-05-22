-- Создаём отдельную тестовую базу для CI/тестов
CREATE DATABASE kanban_notification_test;

-- Все права только своему пользователю
GRANT ALL PRIVILEGES ON DATABASE kanban_notification TO kanban_notification;
GRANT ALL PRIVILEGES ON DATABASE kanban_notification_test TO kanban_notification;

-- Запрещаем подключение других пользователей (кроме суперпользователя)
REVOKE CONNECT ON DATABASE kanban_notification FROM PUBLIC;
REVOKE CONNECT ON DATABASE kanban_notification_test FROM PUBLIC;