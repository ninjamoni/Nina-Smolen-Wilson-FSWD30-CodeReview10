
<?php

 ob_start();

 session_start();

 require_once 'dbconnect.php';

 

 // it will never let you open index(login) page if session is set

 if ( isset($_SESSION['user'])!="" ) {

  header("Location: home.php");

  exit;

 }

 

 $error = false;

 

 if( isset($_POST['btn-login']) ) {

 

  // prevent sql injections/ clear user invalid inputs

  $email = trim($_POST['email']);

  $email = strip_tags($email);

  $email = htmlspecialchars($email);

 

  $user_pass = trim($_POST['user_password']);

  $user_pass = strip_tags($user_pass);

  $user_pass = htmlspecialchars($user_pass);

  // prevent sql injections / clear user invalid inputs

 

  if(empty($email)){

   $error = true;

   $emailError = "Please enter your email address.";

  } else if ( !filter_var($email,FILTER_VALIDATE_EMAIL) ) {

   $error = true;

   $emailError = "Please enter valid email address.";

  }

 

  if(empty($user_pass)){

   $error = true;

   $user_passError = "Please enter your password.";

  }

 

  // if there's no error, continue to login

  if (!$error) {

   

   $user_password = $user_pass; // password hashing using SHA256

 

   $res=mysqli_query($conn, "SELECT user_id, first_name, last_name, user_password FROM users WHERE email='$email'");

   $row=mysqli_fetch_array($res, MYSQLI_ASSOC);

   $count = mysqli_num_rows($res); // if uname/pass correct it returns must be 1 row

   

   if( $count == 1 && $row['user_password']==$user_password ) {

    $_SESSION['user'] = $row['user_id'];

    header("Location: home.php");

   } else {

    $errMSG = "Incorrect Credentials, Try again...";

   }

   

  }

 

 }

?>

<!DOCTYPE html>

<html>

<head>

<title>Login-Authentification-Nina-Smolen-Wilson-FSWD30-CodeReview10</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body style="background-color: lightcyan";>
	<div class="container">
		<div class="row">
			
		</div>	
		<h1  class="header" style="color:darkcyan; size: 80px; padding: 40px"><center>
			Library
		</center></h1>
	
		

    <form method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" autocomplete="off">

             <h3 style="color:darkcyan;">Login</h3>

             <hr />

            <?php

   if ( isset($errMSG) ) {

echo $errMSG; ?>

               

                <?php

   }

   ?>
      

             <input type="email" name="email" class="form-control" placeholder="Your Email" value="<?php echo $email; ?>" maxlength="40" />

             <span class="text-danger"><?php echo $emailError; ?></span>


             <input type="password" name="user_password" class="form-control" placeholder="Your Password" maxlength="15" />


            <span class="text-danger"><?php echo $passError; ?></span>


             <hr />

             <button type="submit" name="btn-login">Login</button>


             <!-- <button type="submit" class="btn btn-block btn-primary" name="btn-signup">Sign Up</button> -->


             <hr />
             <hr />

             <a href="register.php">Register an account here...</a>
 

    </form>


</div>
</body>
</html>
<?php ob_end_flush(); ?>



