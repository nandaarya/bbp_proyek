<?php
if (! isset($_SESSION['role'])) {
	header("location:../index.php");
}
// include databse connection file
include '../dbconnect.php';

// Get id from URL to delete that user
$idx = $_GET['idx'];

// Delete user row from table based on gived id
$result = mysqli_query($conn, "DELETE FROM barang WHERE idx=$idx");

// After delete redirect to Home, so that latest list will be displayed.
header("Location:index.php");
?>