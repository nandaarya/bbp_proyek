<?php
$host = "localhost";
$user = "root";
$password = "";
$database = "proyek_bbp";
 
# Koneksi dan memilih database di server
$conn = mysqli_connect($host,$user,$password,$database);

if (!$conn) {
    die("<script>alert('Gagal tersambung dengan database.')</script>");
}
?>