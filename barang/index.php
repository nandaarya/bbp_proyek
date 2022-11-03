<?php
include '../dbconnect.php';

$result = mysqli_query($conn, "SELECT * FROM barang ORDER BY idx ASC"); // fetch all users data from database
?>
<!DOCTYPE html>
<html lang="en" >
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="..\style\index_barang.css">
	<title>Inventaris BMN UIN Sunan Kalijaga</title>
</head>
<body>
	<!-- Header -->
	<div class="app_header-top"></div>
	<div class="app_header-top2"></div>
	<div class="app_main">
		<div class="app_header">
			<div class="center">
				<div class="app_uin_id">
					<img src="..\assets\images\uin.png">
				</div>
				<div class="app_header_right">
					<div class="app_system_id">Barang Milik Negara</div>
					<div class="app_univ_id">UIN Sunan Kalijaga</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>

	<div class="center">
		<table width='100%' border=1>
		<tr>
			<th>No</th> <th>Kode Barang</th><th>Nama Barang</th> <th>Merek</th> <th>Jumlah</th> <th>Kondisi</th> <th>Unit / Fakultas</th> <th>Lokasi</th> <th>Pemakai</th> <th>Operasi</th>
		</tr>
		<?php
		$nomor = 1;
		while ($daftar_barang = mysqli_fetch_array($result)) {
			echo "<tr>";
			echo "<td>".$nomor."</td>";
			echo "<td>".$daftar_barang['kode']."</td>";
			echo "<td>".$daftar_barang['nama']."</td>";
			echo "<td>".$daftar_barang['merek']."</td>";
			echo "<td>".$daftar_barang['jumlah']."</td>";
			echo "<td>".$daftar_barang['kondisi']."</td>";
			echo "<td>".$daftar_barang['fakultas']."</td>";
			echo "<td>".$daftar_barang['lokasi']."</td>";
			echo "<td>".$daftar_barang['pemakai']."</td>";
			echo "<td><a href='edit.php?idx=$daftar_barang[idx]'>Edit</a> | <a href='delete.php?idx=$daftar_barang[idx]'>Delete</a></td></tr>"
			;
			$nomor++;
		}
		?>
		</table>
		<a href="add.php">Add New User</a><br/><br/>
	</div>


	<!-- Footer -->
	<div class="copyright" style="background-color: #f6f6f6; border-top: 1px solid #dddddd;"> 
		© 2022 - Pusat Teknologi Informasi dan Pangkalan Data, UIN Sunan Kalijaga, Yogyakarta
	</div>
</body>