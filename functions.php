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
