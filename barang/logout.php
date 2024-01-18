<?php 

# Start the session and destroy it
session_start();
session_destroy();

header("Location: ../index.php");

?>