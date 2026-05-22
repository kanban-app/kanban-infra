-- Создаём отдельную тестовую базу для CI/тестов
CREATE DATABASE kanban_task_test;

-- Все права только своему пользователю
GRANT ALL PRIVILEGES ON DATABASE kanban_task TO kanban_task;
GRANT ALL PRIVILEGES ON DATABASE kanban_task_test TO kanban_task;

-- Запрещаем подключение других пользователей (кроме суперпользователя)
REVOKE CONNECT ON DATABASE kanban_task FROM PUBLIC;
REVOKE CONNECT ON DATABASE kanban_task_test FROM PUBLIC;