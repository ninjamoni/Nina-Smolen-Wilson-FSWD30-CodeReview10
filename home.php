<?php

 ob_start();
 session_start();

 require_once 'dbconnect.php';

 // if session is not set this will redirect to login page

 if( !isset($_SESSION['user']) ) {
  header("Location: index.php");
  exit;
 }

 // select logged-in users detail

 $res=mysqli_query($conn, "SELECT * FROM users WHERE user_id=".$_SESSION['user']);

 $userRow=mysqli_fetch_array($res, MYSQLI_ASSOC);
?>

<!DOCTYPE html>
<html>
<head>
<title>Welcome - <?php echo $userRow['email']; ?></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<div class="row">

            <h1 class="col col-lg-11 p-2">Hi <?php echo $userRow['first_name']; ?>!</h1>
            <a class="col-lg-1 p-2"href="logout.php?logout">Sign Out</a>
		</div>

	</div>
</body>
</html>
<?php ob_end_flush(); ?>











<?php 

$sql = "SELECT media_id, title, short_description, ISBN, publish_date, type_of_data, fk_author_id, fk_publisher_id, image FROM big_medialist";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
	echo '<div class="container">'; 
    echo '<table class="table"  style="border: solid darkcyan 20px; background: lightcyan">'; 
      echo  '<thead>';
    echo '<tr class="row text-center">';
      echo '<th scope="col" class="col col-lg-1" >Id</th>';
      echo '<th scope="col" class="col col-lg-1">Title</th>';
      echo '<th scope="col" class="col col-lg-3">Short Description</th>';
      echo '<th scope="col" class="col col-lg-1">ISBN</th>';
      echo '<th scope="col" class="col col-lg-1">Publish Date</th>';
      echo '<th scope="col" class="col col-lg-1">Media Type</th>';
      echo '<th scope="col" class="col col-lg-1">Author</th>';
      echo '<th scope="col" class="col col-lg-1">Publisher</th>';
       echo '<th scope="col" class="col col-lg-1">Image</th>';
    echo '</tr>';
    echo '</div>'; 

    while($row = $result->fetch_assoc()) {
   
   
    echo '<tr class="row text-center">';
      echo '<th scope="col"  class="col col-lg-1" >' . $row['media_id'] . '</th>';
      echo '<td class="col col-lg-1  text-left"><b>'. $row['title'] .'<b></td>';
      echo '<td class=" col col-lg-3 pl-5 text-left" >'. $row['short_description'] .'</td>';
      echo '<td class=" col col-lg-1">'. $row['ISBN'] .'</td>';
      echo '<td class=" col col-lg-1">'. $row['publish_date'] .'</td>';
      echo '<td class="col col-lg-1">'. $row['type_of_data'] .'</td>';
      echo '<td class="col col-lg-1">'. $row['fk_author_id'] .'</td>';
      echo '<td class="col col-lg-1">'. $row['fk_publisher_id'] .'</td>';
      echo '<td class="col col-lg-1"><img class="img-responsive img-rounded" style="width: 100px; border: solid black 1px" src='. $row['image'] .'></td>';
    echo '</tr>';
  
    

    }
      echo "</thead>";
echo "</table>";
} else {
    echo "0 results";
}

$conn->close();
?>
   

</body>

</html>

<?php ob_end_flush(); ?>
