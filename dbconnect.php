<?php 
$conn = mysqli_connect("localhost","root","","proyek_bbp");

if (!$conn) {
    die("<script>alert('Gagal tersambung dengan database.')</script>");
}
?>