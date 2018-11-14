<html>
    <body>
    <?php
$servername = "104.198.255.44";
$username = "root";
$password = "jensen27";
$db = "spheric-wonder-215616:us-central1:jenskd-27";

$dbconnect=mysqli_connect($servername,$username,$password,$db);

if ($dbconnect->connect_error) {
    die("Connection Failed: " . $dbconnect->connect_error);
}
echo <h3>"Connected successfully"</h3>

$dbconnect->close();
?>
  
<html lang="en">
  <meta charset="utf-8">

  <title>Dungeons and Dragons Spell Guide </title>

  <link rel="stylesheet" type="text/css" href="dungeon.css">

  <link rel="stylesheet" type="text/js" href="dungeon_dragon.js">

  <link rel="stylesheet" type="text/sql" href="spells.sql">


  <div class="header">
    <div id="title">
    <h1>Dungeon and Dragons Spells</h1>
  </div>
    <img style ="float: right" id="pic" src="D&D_image.jpg" alt="Dragon" class="image">
  </div>
  <div class="body">
    <div id="spells">
    <h3>This is where the majority drop downs of each class, specifying what types of spells each class can do, will be.</h3>
  </div>
  </div>
</body>
</html>
