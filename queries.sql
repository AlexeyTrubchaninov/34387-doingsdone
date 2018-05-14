USE doingsdone;

INSERT INTO categories SET name="Все";
INSERT INTO categories SET name="Входящие";
INSERT INTO categories SET name="Учеба";
INSERT INTO categories SET name="Работа";
INSERT INTO categories SET name="Домашние Дела";
INSERT INTO categories SET name="Авто";

INSERT INTO users SET reg_date="11.05.2018", email="ivanov@mail.ru", name="Ivan", password="qwerty", contacts="+79130000101";
INSERT INTO users SET reg_date="11.05.2018", email="petrov@mail.ru", name="Petr", password="ytrewq", contacts="+79130001010";

INSERT INTO task__select SET create_date="CURRENT_TIMESTAMP()", done_date="", name="Собеседование в IT компанию", file="", deadline="01.06.2018";
INSERT INTO task__select SET create_date="CURRENT_TIMESTAMP()", done_date="", name="Выполнить тестовое задание", file="", deadline="25.05.2018";
INSERT INTO task__select SET create_date="CURRENT_TIMESTAMP()", done_date="", name="Сделать задание первого раздела", file="", deadline="21.04.2018";
INSERT INTO task__select SET create_date="CURRENT_TIMESTAMP()", done_date="", name="Встреча с другом", file="", deadline="22.04.2018";
INSERT INTO task__select SET create_date="CURRENT_TIMESTAMP()", done_date="", name="Купить корм для кота", file="", deadline="";
INSERT INTO task__select SET create_date="CURRENT_TIMESTAMP()", done_date="", name="Заказать пиццу", file="", deadline="";

/* Список из проектов для одного пользователя */

SELECT * from categories
WHERE author_id="1"
ORDER BY name ASC;

/* Список задач из одного проекта */

SELECT * from tasks
WHERE category_id="1"
ORDER BY name ASC;

/* Пометить задачу как выполненую */

UPDATE tasks SET done_date="CURRENT_TIMESTAMP()"
WHERE id="1";

/*все задачи для завтрашнего дня*/

SELECT * FROM tasks
WHERE deadline="(NOW() - INTERVAL 1 DAY)"
ORDER BY name ASC;

/*название задачи по её id*/

UPDATE tasks SET name="Новое имя"
WHERE id="1";
