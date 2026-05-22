-- Создаём отдельную тестовую базу для CI/тестов
CREATE DATABASE kanban_auth_test;

-- Все права только своему пользователю
GRANT ALL PRIVILEGES ON DATABASE kanban_auth TO kanban_auth;
GRANT ALL PRIVILEGES ON DATABASE kanban_auth_test TO kanban_auth;

-- Запрещаем подключение других пользователей (кроме суперпользователя)
REVOKE CONNECT ON DATABASE kanban_auth FROM PUBLIC;
REVOKE CONNECT ON DATABASE kanban_auth_test FROM PUBLIC;