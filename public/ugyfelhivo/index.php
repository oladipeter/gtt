<?php
if( isset($_GET["helykod"]) ) 
{
    $helykod = $_GET["helykod"];
    $link = "http://www.globomax-ugyfelhivo.hu/menu.php?helykod=".$helykod;
}
else 
{
    $helykod = "";
    $link = "http://www.globomax-ugyfelhivo.hu/index.php";
}
?>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <meta http-equiv="content-type" content="text/html; charset=utf-8">
  <meta name="generator" content="PSPad editor, www.pspad.com">
  <style type="text/css">
  
  body {    
  }
  
  .info_ablak {
    width: 500px;
    height: 50px;
    text-align: center;
    position: absolute;
    top: 50%;
    left: 50%;
    margin-left: -250px;
    margin-top: -25px;       
  }
  
  .info_text {    
    font-size: 16px;
    font-weight: bold;
    font-family: Georgia;
  }
  
  </style>
  <script language="javascript">
  <?php
    print("function Redirect()\n");
    print("{\n");
    
    $script = 'window.location = "'.$link.'";';
    print($script);
    print("\n}\n");
  ?>
  </script>
  <title></title>
  </head>
  <body onload="setTimeout('Redirect()', 5000);">              
  <div class="info_ablak">
    <div class="info_text">
      Értesítjük tisztelt ügyfeleinket, hogy oldalunk új helyre költözött:
      <br /><br />
      <a href= <?php print $link; ?> >www.globomax-ugyfelhivo.hu</a>
      <br /><br />
      Az oldal 5 másodperc mulva automatikusan átítányítja az új helyre!
      
    </div>  
  </div>
  </body>
</html>

