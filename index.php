
<?php
// показывать или нет выполненные задачи
$show_complete_tasks = rand(0, 1);
?>

<?php
  $categories=["Все","Входящие","Учеба","Работа","Домашние дела","Авто",];
?>
<?php
  $tasks=[
  0=>["task"=>"Собеседование в IT компанию",
     "date"=>"01.06.2018",
     "category"=>"Работа",
     "execution"=>"false"],
  1=>["task"=>"Выполнить тестовое занятие",
      "date"=>"25.05.2018",
      "category"=>"Работа",
      "execution"=>"false"],
  2=>["task"=>"Сделать задание первого раздела",
      "date"=>"21.04.2018",
      "category"=>"Учеба",
      "execution"=>"true"],
  3=>["task"=>"Встреча с другом",
      "date"=>"22.04.2018",
      "category"=>"Входящие",
      "execution"=>"false"],
  4=>["task"=>"Купить корм для кота",
      "date"=>"Нет",
      "category"=>"Домашние дела",
      "execution"=>"false"],
  5=>["task"=>"Заказать пиццу",
      "date"=>"Нет",
      "category"=>"Домашние дела",
      "execution"=>"false"],
  ];
  ?>

<?php
require_once("templates/index.php");
require_once("templates/layout.php");
require_once("functions.php");

$content=templator("templates/layout.php",["categories"=>[$categories]])

$layout=templator("templates/layout.php",["content"=>$content,
                                          "tasks"=>$tasks,
                                          "title"=>$title]);

print($layout);

?>
