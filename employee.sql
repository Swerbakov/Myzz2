-- Задание 2*: таблица «Сотрудник»

-- Отделы
CREATE TABLE IF NOT EXISTS department (
    id   SERIAL       PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

-- Сотрудники; начальник — тоже сотрудник (самоссылка)
CREATE TABLE IF NOT EXISTS employee (
    id            SERIAL       PRIMARY KEY,
    name          VARCHAR(100) NOT NULL,
    department_id INTEGER      NOT NULL REFERENCES department(id),
    manager_id    INTEGER      REFERENCES employee(id) ON DELETE SET NULL
);
