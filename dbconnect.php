<?php
$host = "sql302.epizy.com";
$user = "epiz_32987256";
$password = "ENPnL7JhrpL1Yj";
$database = "epiz_32987256_proyek_bbp";
 
$conn = mysqli_connect($host,$user,$password,$database);

if (!$conn) {
    die("<script>alert('Gagal tersambung dengan database.')</script>");
}
?>