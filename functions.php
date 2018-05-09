<?php
  function templator ($template_location, $array){
    if (!file_exists($template_location)) {
      return("");
    }
    else{
      ob_start();
      extract($array);
      require_once($template_location);
      return ob_get_clean();
    }
  }

?>

<?php

function encryptor($text){
return htmlspecialchars($text)
}

?>

<?php
  function projects_count ($tasks,$project_name){
    if ($project_name=="Все"){
      return count($tasks);}
    else {
      $counter=0;
      foreach ($tasks as $val){
        if ($val["category"]==$project_name){
        $counter +=1;
        }
      }
      return $counter;
    }
  }

?>

<?php function date_check ($date){
  $current_date = time();
  $time_left = (strtotime($date) - $current_date)/3600;
  return $time_left;
}
?>
